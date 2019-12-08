//dependency check template
//Jingyang Liu
//12072019

`include "types.sv"

module dep_check #(
    parameter width = 64
    // sorry I have to hard code number of checks
    )
    (
    input logic clk
    ,input logic rst
    
    // inputs to check
    ,input [width-1:0] data_check_a
    ,input [width-1:0] data_check_b
    ,input [width-1:0] data_check_c
    
    // input buffer
    ,input logic [width-1:0] data_i// input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    // output
    ,output logic valid_o // output indicating data is valid
    ,output logic [width-1:0] data_o // data for next module
    ,input logic ready_i // input from next module indicating done w/ data
    // is there dependency?
    ,output logic dep
);

logic [width-1:0] data_i_reg;
logic empty_i;

always_comb begin
    if (~empty_i) begin
        if ((data_check_a == data_i_reg) || (data_check_b == data_i_reg) || (data_check_c == data_i_reg)) begin
            dep = 1'b1;
        end
        else begin
            dep = 1'b0;
        end
    end
    else begin
        dep = 1'b0;
    end
end

assign ready_o = empty_i;
assign valid_o = ~empty_i & ~dep;
assign data_o = data_i_reg;

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
    else if (~empty_i & ready_i & ~dep) begin
        data_i_reg <= data_i_reg;
        empty_i <= 1'b1;
    end
    else begin
        data_i_reg <= data_i_reg;
        empty_i <= empty_i;
    end
end

endmodule : dep_check