// Andrew Smith
// Testbench RTL:
//
// 120619

`include "types.sv"

module tb;
  int unsigned fd;       // Variable for file descriptor handle
  int unsigned tick;
  int unsigned r, mr, s; // _ready, _mem_flag, downstream_can_accept
  int unsigned md;       // mem_result
  int unsigned vertex_id, vertex_dst_id, edge_id;
  int unsigned vertex_data, vertex_dst_data, message_data;
  shortreal edge_data, edge_temp_data;
  int unsigned last_vertex, last_edge;

  // Testing Purpose:
  int unsigned a,b,c,d;
  logic [15:0] a_o, b_o, c_o, d_o;
  string format_str = "%d,%d,%d,%d,%d\n";

  int unsigned curr_tick;
  logic clk, reset;
  
  pipeline_data_t in_data;
  logic ready, mem_req_complete, send; 
  logic [63:0] mem_data;

  // DUT
//  ReadSrcProperty DUT(
//    // Input
//    .clk(clk),
//    .reset(reset),
//    .i_data(in_data),
//    .src_data(mem_data),
//    .ready(ready),
//    .complete(mem_req_complete),
//    .n_stall_can_accept(send),
//    // Output
//    .p_stall_can_accept(),
//    .o_data()
//  );

  initial begin
    tick = 0;
    curr_tick = 0;
    clk = 0;
    reset = 0;
    // 2. Let us now read back the data we wrote in the previous step
    //fd = $fopen ("/home/andrew/illinois/cs598jt/final_project/test.csv", "r");
    fd = $fopen ("/home/atsmith3/cs598jt/final_proj/test.csv", "r");

    // Read Initial Line:
    if ($fscanf (fd, format_str, tick, a, b, c, d)>0) begin
      $display (format_str, tick, a, b, c, d);
    end
    else begin
      // Close this file handle
      $fclose(fd);
      //$finish;
    end
  end

  always begin
    #1 clk = !clk;
    if(curr_tick == tick) begin
      // Assign signals from test vector file
      a_o = a;
      b_o = b;
      c_o = c;
      d_o = d;
      
      // Read in new test vectors 
      if ($fscanf (fd, format_str, tick, a, b, c, d)>0) begin
        $display (format_str, tick, a, b, c, d);
      end
      else begin
        // Close this file handle
        $fclose(fd);
        //$finish;
      end
    end
    if(clk == 1'b1) begin
      curr_tick = curr_tick + 1;
    end
  end
endmodule
