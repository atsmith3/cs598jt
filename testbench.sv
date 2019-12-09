// Andrew Smith
// Testbench RTL:
//
// 120619

`include "types.sv"

module tb;
  int unsigned fd;       // Variable for file descriptor handle
  sim_event_t event;

//  int unsigned tick;
//  int unsigned r, mr, s; // _ready, _mem_flag, downstream_can_accept
//  int unsigned md;       // mem_result
//  int unsigned vertex_id, vertex_dst_id, edge_id;
//  int unsigned vertex_data, vertex_dst_data, message_data;
//  shortreal edge_data, edge_temp_data;
//  int unsigned last_vertex, last_edge;

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
    done = 0;
    // 2. Let us now read back the data we wrote in the previous step
    //fd = $fopen ("/home/andrew/illinois/cs598jt/final_project/test.csv", "r");
    fd = $fopen ("/home/atsmith3/cs598jt/final_proj/test.csv", "r");

    // Read Initial Line:
    if ($fscanf (fd, sim_event_format_str, event.tick, event.vertex_id, event.vertex_dst_id, event.edge_id, event.vertex_data, event.vertex_dst_data, event.message_data, event.edge_data, event.edge_temp_data, event.last_vertex, event.last_edge, event.ready, event.mem_flag, event.send, event.mem_result)>0) begin
      $display (sim_event_format_str, event.tick, event.vertex_id, event.vertex_dst_id, event.edge_id, event.vertex_data, event.vertex_dst_data, event.message_data, event.edge_data, event.edge_temp_data, event.last_vertex, event.last_edge, event.ready, event.mem_flag, event.send, event.mem_result);
    end
    else begin
      done = 1;
      $fclose(fd);
    end
  end

  always begin
    #1 clk = !clk;
    if(curr_tick == tick) begin
      // Assign signals from test vector file
      in_data.vertex_id = event.vertex_id;
      in_data.vertex_dst_id = event.vertex_dst_id;
      in_data.edge_id = event.edge_id;
      in_data.vertex_data = event.vertex_data;
      in_data.vertex_dst_data = event.vertex_dst_data;
      in_data.message_data = event.message_data;
      in_data.edge_data = event.edge_data;
      in_data.edge_temp_data = event.temp_data;
      in_data.last_vertex = event.last_vertex;
      in_data.last_edge = event.last_edge;
      ready = event.ready;
      mem_req_complete = event.mem_flag;
      send = event.send;
      mem_data = event.data;
      
      // Read in new test vectors 
      if (done != 1) begin
    if ($fscanf (fd, sim_event_format_str, event.tick, event.vertex_id, event.vertex_dst_id, event.edge_id, event.vertex_data, event.vertex_dst_data, event.message_data, event.edge_data, event.edge_temp_data, event.last_vertex, event.last_edge, event.ready, event.mem_flag, event.send, event.mem_result)>0) begin
      $display (sim_event_format_str, event.tick, event.vertex_id, event.vertex_dst_id, event.edge_id, event.vertex_data, event.vertex_dst_data, event.message_data, event.edge_data, event.edge_temp_data, event.last_vertex, event.last_edge, event.ready, event.mem_flag, event.send, event.mem_result);
    end
        end
        else begin
          // Close this file handle
          done = 1;
          $fclose(fd);
        end
      end
      else begin 
        $stop
      end
    end
    if(clk == 1'b1) begin
      curr_tick = curr_tick + 1;
    end
  end
endmodule
