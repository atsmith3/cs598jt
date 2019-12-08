//pipeline interface
//Jingyang Liu
//12072019

`include "types.sv"

/* module: 1FIFO
 * Assuming presence of output register of prev module
 * 
 * If both valid and empty are high,
 * i.e., prev module empty to pass data and curr module ready to accept,
 * current module "latch in" the data,and set empty to be low.
 *
 * The input reg will hold the value until current module is done
 * processing and the output reg latched the processed data
 */


module one_FIFO (
    input logic clk
    ,input logic rst
    
    // input side
    ,input pipeline_data_t data_i // input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    //output side
    ,output logic valid_o // output indicating data is valid
    ,output pipeline_data_t data_o // data for next module
    ,input logic processed // input from next module indicating done w/ data
);

pipeline_data_t data_reg;
logic empty;

assign data_o = data_reg;
assign ready_o = empty;
assign valid_o = ~empty;

always_ff @(posedge clk) begin
    if (rst) begin
        data_reg <= '0;
        empty <= 1'b1;
    end
    else if (empty & valid_i) begin
        // reg is empty and input data is valid,
        // latch in data and set empty to 0
        data_reg <= data_i;
        empty <= 1'b0;
    end
    else if (~empty & processed) begin
        data_reg <= data_reg;
        empty <= 1'b1;
    end
    else begin
        data_reg <= data_reg;
        empty <= empty;
    end
end

endmodule : one_FIFO