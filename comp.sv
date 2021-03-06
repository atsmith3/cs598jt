//compute template
//Jingyang Liu
//12072019

`include "types.sv"
//`define PROCESS_EDGE
//`define REDUCE
//`define APPLY
//`define bfs
//`define cc
//`define sssp

module comp #(
    parameter data_width = 64
    // sorry I have to hard code number of inputs
    )
    (
    input logic clk
    ,input logic rst
    
    // inputs to comp
    ,input [data_width-1:0] data_a
    ,input [data_width-1:0] data_b
    
    // input handshake
    //,input logic [width-1:0] data_i// input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    // output
    ,output logic valid_o // output indicating data is valid
    ,output logic [data_width-1:0] data_o // data for next module
    ,input logic ready_i // input from next module indicating done w/ data
    `ifdef APPLY
    // update DRAM?
    ,output logic update_flag
    `endif
);

logic [data_width*2-1:0] data_i;
logic [data_width*2-1:0] data_i_reg = '{default: '0};
logic [data_width-1:0] data_result;
//comment flag if not needed
`ifdef APPLY
logic flag_result;
assign update_flag = flag_result;
`endif

assign data_i = {data_a, data_b};
logic empty_i;

always_comb begin
    `ifdef PROCESS_EDGE
    // PROCESSi_EDGE, msg_data = vertex_data
    `ifdef bfs
        data_result = data_a;
    `elsif cc
        data_result = data_a;
    `else
        data_result = data_a + data_b;
    `endif
    `endif
    
    `ifdef REDUCE
    // REDUCE, vertex_dst_tmp_data = msg_data
    `ifdef bfs    
        data_result = data_b;
    `elsif cc
        if (data_b < data_a) begin
            data_result = data_b;
        end
        else begin
            data_result = data_a;
        end
    `else 
        if (data_b < data_a) begin
            data_result = data_b;
        end
        else begin
            data_result = data_a;
        end
    `endif
    `endif
    
    `ifdef APPLY
    // APPLY, if (v_dst != v_dst_tmp), output = v_dst, flag = 1
    // hmm shouldn't the DRAM be updated w/ scratchpad content?
    `ifdef bfs
        if (data_a != data_b) begin
            data_result = data_a;
            flag_result = 1'b1;
        end
        else begin
            data_result = data_a;
            flag_result = 1'b0;
        end
    `elsif cc
        if (data_b < data_a) begin
            data_result = data_a;
            flag_result = 1'b1;
        end
        else begin
            flag_result = 1'b0;
            data_result = data_b;
        end
    `else
        if (data_b < data_a) begin
            data_result = data_a;
            flag_result = 1'b1;
        end
        else begin
            flag_result = 1'b0;
            data_result = data_b;
        end
    `endif
    `endif
end

assign ready_o = empty_i;
assign valid_o = ~empty_i;

`ifdef APPLY
//comment flag if not needed
assign data_o = {data_result, flag_result};
`else
assign data_o =  data_result;
`endif

// input stage
always_ff @(posedge clk) begin
    if (rst) begin
        data_i_reg <= '0;
        empty_i <= 1'b1;
    end
    else if (empty_i & valid_i) begin
        // reg is empty and input data is valid,
        // latch in data and set empty to 0
        data_i_reg <= data_i;
        empty_i <= 1'b0;
    end
    else if (~empty_i & ready_i) begin
        data_i_reg <= data_i_reg;
        empty_i <= 1'b1;
    end
    else begin
        data_i_reg <= data_i_reg;
        empty_i <= empty_i;
    end
end

endmodule : comp
