//random memory read template
//Jingyang Liu
//12072019

`include "types.sv"

module rand_mem_read_module #(
    parameter input_width = 64
    ,parameter output_width = 64
    ,parameter addr_width = 64
    ,parameter data_width = 64
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
    ,output logic mem_read
    ,output logic [addr_width-1:0] mem_addr
    // input from mem
    ,input logic mem_resp
    ,input logic [data_width-1:0] mem_rdata
    
    // output side, next module
    ,output logic valid_o // output indicating data is valid
    ,output logic [output_width-1:0] data_o // data for next module
    ,input logic ready_i // input from next module indicating done w/ data
);

logic [input_width-1:0] data_i_reg = '{default: '0};
logic [output_width-1:0] data_o_reg = '{default: '0};
logic empty_i, empty_o;

assign ready_o = empty_i ? (empty_o ? 1'b1 : ready_i) : 1'b0;
assign mem_read = (~empty_i) ? (empty_o ? 1'b1 : ready_i) : 1'b0;

assign mem_addr = data_i_reg;

assign valid_o = empty_o;
assign data_o = data_o_reg; // be careful about the width

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

// output stage
always_ff @(posedge clk) begin
    if (rst) begin
        data_o_reg <= '0;
        empty_o <= 1'b1;
    end
    else if (empty_o & mem_resp) begin
        data_o_reg <= mem_rdata;
        empty_o <= 1'b0;
    end
    else if (~empty_o & ready_i) begin
        data_o_reg <= data_o_reg;
        empty_o <= 1'b1;
    end
    else begin
        data_o_reg <= data_o_reg;
        empty_o <= empty_o;
    end
end

endmodule : rand_mem_read_module
