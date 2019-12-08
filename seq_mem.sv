//sequential memory access template
//Jingyang Liu
//12072019

`include "types.sv"

module seq_mem_module #(
    parameter addr_width = 64
    ,parameter cntr_width = 64
    ,parameter input_width = addr_width + cntr_width
    ,parameter data_width = 64
    ,parameter output_width = data_width + 1
    ,parameter addr_inc = 4
    )
    (
    input logic clk
    ,input logic rst
    
    // input side, prev module
    //,input logic [input_width-1:0] data_i // input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    // tb side
    ,input logic [addr_width-1:0] base_addr
    ,input logic [cntr_width-1:0] queue_length
    
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
    ,input logic ready_i // input from next module in4dicating done w/ data
);

logic [input_width-1:0] data_i;
logic [input_width-1:0] data_i_reg;

logic [addr_width-1:0] base_addr_int;
logic [cntr_width-1:0] queue_length_int;
logic [addr_width-1:0] end_addr;

logic [cntr_width-1:0] cntr;

logic last_entry;

logic [data_width-1:0] data_o_reg;

logic empty_i, empty_o;

assign data_i = {base_addr, queue_length};
assign base_addr_int = data_i_reg[addr_width-1:cntr_width];
assign queue_length_int = data_i_reg[cntr_width-1:0];

//assign end_addr = base_addr_int + queue_length_int*addr_inc;

assign ready_o = empty_i ? (empty_o ? 1'b1 : ready_i) : 1'b0;
assign mem_read = (~empty_i) ? (empty_o ? 1'b1 : ready_i) : 1'b0;

assign mem_addr = base_addr_int + cntr*addr_inc;

assign valid_o = empty_o;
assign data_o = {data_o_reg, last_entry}; // be careful about the width

// mem addr increment
always_ff @(posedge clk) begin
    if (rst || (cntr == queue_length_int)) begin
        // reset or done w/ current queue
        cntr <= '0;
        last_entry <= 1'b0;
    end
    else if (cntr < queue_length_int && (empty_o & mem_resp)) begin
        // not done w/ current queue and done w' current addr
        cntr <= cntr + 1'b1;
        if (cntr == queue_length_int-1) begin
            last_entry <= 1'b1;
        end
    end
    else begin
        cntr <= cntr;
        last_entry <= last_entry;
    end
end

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


endmodule : seq_mem_module