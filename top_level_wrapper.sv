`include "types.sv"

`define READ_SRC_PROPERTY
//`define READ_SRC_EDGES
//`define READ_DST_PROPERTY
//`define PROCESS_EDGE
//`define CONTROL_ATOMIC_UPDATE
//`define READ_TEMP_DST_PROPERTY
//`define REDUCE
//`define WRITE_TEMP_DST_PROPERTY
//`define READ_VERTEX_PROPERTY
//`define READ_TEMP_VERTEX_PROPERTY
//`define APPLY
//`define WRITE_VERTEX_PROPERTY

module top_level_wrapper #(
`ifdef READ_SRC_PROPERTY
    parameter addr_width = 64
    ,parameter cntr_width = 64
    ,parameter input_width = addr_width + cntr_width
    ,parameter data_width = 64
    ,parameter output_width = data_width + 1
    ,parameter addr_inc = 4
`endif
`ifdef READ_SRC_EDGES
    parameter addr_width = 64
    ,parameter cntr_width = 64
    ,parameter input_width = addr_width + cntr_width
    ,parameter data_width = 64*2
    ,parameter output_width = data_width + 1
    ,parameter addr_inc = 8
`endif
`ifdef READ_DST_PROPERTY
    parameter input_width = 64
    ,parameter output_width = 64
    ,parameter addr_width = 64
    ,parameter data_width = 64
`endif
`ifdef PROCESS_EDGE
    parameter data_width = 64
`endif
`ifdef CONTROL_ATOMIC_UPDATE
    parameter width = 64
`endif
`ifdef READ_TEMP_DST_PROPERTY
    parameter input_width = 64
    ,parameter output_width = 64
    ,parameter addr_width = 64
    ,parameter data_width = 64
`endif
`ifdef REDUCE
    parameter data_width = 64
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
    parameter addr_width = 64
    ,parameter data_width = 64
    ,parameter input_width = addr_width + data_width
`endif
`ifdef READ_VERTEX_PROPERTY
    parameter addr_width = 64
    ,parameter cntr_width = 64
    ,parameter input_width = addr_width + cntr_width
    ,parameter data_width = 64
    ,parameter output_width = data_width + 1
    ,parameter addr_inc = 4
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
    parameter input_width = 64
    ,parameter output_width = 64
    ,parameter addr_width = 64
    ,parameter data_width = 64
`endif
`ifdef APPLY
    parameter data_width = 64
`endif
`ifdef WRITE_VERTEX_PROPERTY
    parameter addr_width = 64
    ,parameter data_width = 64
    ,parameter input_width = 1 + addr_width + data_width
`endif
    )(
`ifdef READ_SRC_PROPERTY
    input logic clk
    ,input logic rst
    
    // input side, prev module
    //,input logic [input_width-1:0] data_i // input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    // tb side
    ,input logic [addr_width-1:0] base_addr
    ,input logic [cntr_width-1:0] queue_length
    ,input logic new_iteration
    
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
`endif
`ifdef READ_SRC_EDGES
    input logic clk
    ,input logic rst
    
    // input side, prev module
    //,input logic [input_width-1:0] data_i // input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    // tb side
    ,input logic [addr_width-1:0] base_addr
    ,input logic [cntr_width-1:0] queue_length
    ,input logic new_iteration
    
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
`endif
`ifdef READ_DST_PROPERTY
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
`endif
`ifdef PROCESS_EDGE
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
`endif
`ifdef CONTROL_ATOMIC_UPDATE
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
`endif
`ifdef READ_TEMP_DST_PROPERTY
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
`endif
`ifdef REDUCE
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
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
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
`endif
`ifdef READ_VERTEX_PROPERTY
    input logic clk
    ,input logic rst
    
    // input side, prev module
    //,input logic [input_width-1:0] data_i // input data from prev module
    ,input logic valid_i // input handshake signal from prev module
    ,output logic ready_o // output handshake signal to prev module
    
    // tb side
    ,input logic [addr_width-1:0] base_addr
    ,input logic [cntr_width-1:0] queue_length
    ,input logic new_iteration
    
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
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
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
`endif
`ifdef APPLY
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
    ,output logic update_flag
`endif
`ifdef WRITE_VERTEX_PROPERTY
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
`endif
);
`ifdef READ_SRC_PROPERTY
    seq_mem_module P1 (.*);
`endif
`ifdef READ_SRC_EDGES
    seq_mem_module P3 (.*);
`endif
`ifdef READ_DST_PROPERTY
    rand_mem_read_module P4 (.*);
`endif
`ifdef PROCESS_EDGE
    comp P5 (.*);
`endif
`ifdef CONTROL_ATOMIC_UPDATE
    dep_check P6 (.*);
`endif
`ifdef READ_TEMP_DST_PROPERTY
    rand_mem_read_module P7 (.*);
`endif
`ifdef REDUCE
    comp P8 (.*);
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
    rand_mem_write_module P9 (.*);
`endif
`ifdef READ_VERTEX_PROPERTY
    seq_mem_module A1 (.*);
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
    rand_mem_read_module A2 (.*);
`endif
`ifdef APPLY
    comp A3 (.*);
`endif
`ifdef WRITE_VERTEX_PROPERTY
    rand_mem_write_module A4 (.*);
`endif

endmodule: top_level_wrapper