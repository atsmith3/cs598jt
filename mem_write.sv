//memory write template
//Jingyang Liu
//12072019

`include "types.sv"

`define A4

module rand_mem_write_module #(
    parameter addr_width = 64
    ,parameter data_width = 64
    `ifdef A4
    ,parameter input_width = 1 + addr_width + data_width
    `else
    ,parameter input_width = addr_width + data_width
    `endif
    )
    (
    input logic clk
    ,input logic rst
    
    // input side, prev module
    ,input logic [input_width-1:0] data_i // input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    // mem side
    // output to mem
    ,output logic mem_write
    ,output logic [addr_width-1:0] mem_addr
    ,output logic [data_width-1:0] mem_wdata
    // input from mem
    ,input logic mem_resp
    
    // output side, next module
    ,output logic done
);

logic [input_width-1:0] data_i_reg = '{default: '0};
logic empty_i;

`ifdef A4
logic update_flag;
assign update_flag = data_i_reg[input_width-1];
`endif

assign ready_o = empty_i & done;
//assign mem_read = ~empty_i & done;

`ifdef A4
assign mem_write = ~empty_i & update_flag;
`else
assign mem_write = ~empty_i;
`endif

assign mem_addr = data_i_reg[addr_width+data_width-1:data_width];
assign mem_wdata = data_i_reg[data_width-1:0];

// input stage
always_ff @(posedge clk) begin
    if (rst) begin
        data_i_reg <= '0;
        empty_i <= 1'b1;
        done <= 1'b1;
    end
    else if (empty_i & valid_i) begin
        // reg is empty and input data is valid,
        // latch in data and set empty to 0
        data_i_reg <= data_i;
        empty_i <= 1'b0;
        done <= 1'b0;
    end
    else if (~empty_i & mem_resp) begin
        data_i_reg <= data_i_reg;
        empty_i <= 1'b1;
        done <= 1'b1;
    end
    else begin
        data_i_reg <= data_i_reg;
        empty_i <= empty_i;
        done <= done;
    end
end


endmodule : rand_mem_write_module
