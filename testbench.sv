// Andrew Smith
// Testbench RTL:
//
// 120619

`include "types.sv"

//-----------------------------------------------------------------------------
// TESTBENCH
//-----------------------------------------------------------------------------
//`define READ_SRC_PROPERTY
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
`define WRITE_VERTEX_PROPERTY

module tb;
  int unsigned fd;       // Variable for file descriptor handle
  int unsigned curr_tick;
  logic clk, reset, done;
 
  //---------------------------------------------------------------------------
  // DUT SIGNALS
  //---------------------------------------------------------------------------
`ifdef READ_SRC_PROPERTY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ReadSrcProperty_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n";
  sim_event_read_src_property_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
  logic ready; 
  logic [63:0] mem_result;
  logic [63:0] address;
  logic [63:0] queue_length;
  logic iteration_reset;
`endif
`ifdef READ_SRC_EDGES
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ReadSrcEdges_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d,%d,%f,%d,%d,%d\n";
  sim_event_read_src_edges_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
  logic ready; 
  logic edges_empty; 
  logic [63:0] edge_data;
  logic [63:0] dst_id;
  logic [63:0] address;
  logic [63:0] num_edges;
`endif
`ifdef READ_DST_PROPERTY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ReadDstProperty_0_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d,%d\n";
  sim_event_read_dst_property_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
  logic ready; 
  logic [63:0] mem_result; 
`endif
`ifdef PROCESS_EDGE
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ProcessEdge_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d\n";
  sim_event_process_edge_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic complete;
  logic ready; 
`endif
`ifdef CONTROL_ATOMIC_UPDATE
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ControlAtomicUpdate_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d,%d,%d\n";
  sim_event_control_atomic_update_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic ready; 
  logic [63:0] p7_dst_id;
  logic [63:0] p8_dst_id;
  logic [63:0] p9_dst_id;
`endif
`ifdef READ_TEMP_DST_PROPERTY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ReadTempDstProperty_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d,%d\n";
  sim_event_read_temp_dst_property_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
  logic ready; 
  logic [63:0] mem_result; 
`endif
`ifdef REDUCE
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/Reduce_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d\n";
  sim_event_reduce_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic complete;
  logic ready; 
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/WriteTempDstProperty_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d\n";
  sim_event_write_temp_dst_property_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
`endif
`ifdef READ_VERTEX_PROPERTY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ReadVertexProperty_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n";
  sim_event_read_vertex_property_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
  logic ready; 
  logic [63:0] mem_result;
  logic [63:0] address;
  logic [63:0] queue_length;
  logic iteration_reset;
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/ReadTempVertexProperty_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d,%d\n";
  sim_event_read_temp_vertex_property_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
  logic ready; 
  logic [63:0] mem_result; 
`endif
`ifdef APPLY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/Apply_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d\n";
  sim_event_apply_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic complete;
  logic ready; 
`endif
`ifdef WRITE_VERTEX_PROPERTY
  string trace_file = "/home/andrew/illinois/cs598jt/final_project/trace/WriteVertexProperty_0_in.csv";
  string format_string = "%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%f,%f,%d,%d,%d,%d,%d,%d\n";
  sim_event_write_vertex_property_t sim_event;
  pipeline_data_t in_data;
  logic valid;
  logic mem_flag;
  logic [63:0] address;
`endif

  //---------------------------------------------------------------------------
  // DUT
  //---------------------------------------------------------------------------
`ifdef READ_SRC_PROPERTY
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
`endif
`ifdef READ_SRC_EDGES

`endif
`ifdef READ_DST_PROPERTY

`endif
`ifdef PROCESS_EDGE

`endif
`ifdef CONTROL_ATOMIC_UPDATE

`endif
`ifdef READ_TEMP_DST_PROPERTY

`endif
`ifdef REDUCE

`endif
`ifdef WRITE_TEMP_DST_PROPERTY

`endif
`ifdef READ_VERTEX_PROPERTY

`endif
`ifdef READ_TEMP_VERTEX_PROPERTY

`endif
`ifdef APPLY

`endif
`ifdef WRITE_VERTEX_PROPERTY

`endif

  initial begin
    sim_event.tick = 0;
    curr_tick = 0;
    clk = 0;
    reset = 0;
    done = 0;

    fd = $fopen (trace_file, "r");

    if($fscanf(fd, 
               format_string,
               sim_event.tick, 
               sim_event.pipeline_data.vertex_id, 
               sim_event.pipeline_data.vertex_id_addr, 
               sim_event.pipeline_data.vertex_dst_id,
               sim_event.pipeline_data.vertex_dst_id_addr,
               sim_event.pipeline_data.edge_id, 
               sim_event.pipeline_data.vertex_data, 
               sim_event.pipeline_data.vertex_dst_data, 
               sim_event.pipeline_data.message_data, 
               sim_event.pipeline_data.vertex_temp_dst_data,
               sim_event.pipeline_data.edge_data, 
               sim_event.pipeline_data.edge_temp_data, 
               sim_event.pipeline_data.last_vertex, 
               sim_event.pipeline_data.last_edge, 
               sim_event.pipeline_data.updated, 
`ifdef READ_SRC_PROPERTY      
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result,
               sim_event.address,
               sim_event.queue_length,
               sim_event.iteration_reset)>0) begin
`endif
`ifdef READ_SRC_EDGES
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.edges_empty,
               sim_event.edge_data,
               sim_event.dst_id_curr,
               sim_event.address_curr,
               sim_event.num_edges_curr)>0) begin
`endif
`ifdef READ_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result)>0) begin
`endif
`ifdef PROCESS_EDGE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready)>0) begin
`endif
`ifdef CONTROL_ATOMIC_UPDATE
               sim_event.valid,
               sim_event.ready,
               sim_event.p7_dst_id,
               sim_event.p8_dst_id,
               sim_event.p9_dst_id)>0) begin
`endif
`ifdef READ_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result)>0) begin
`endif
`ifdef REDUCE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready)>0) begin
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag)>0) begin
`endif
`ifdef READ_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result,
               sim_event.address,
               sim_event.queue_length,
               sim_event.iteration_reset)>0) begin
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result)>0) begin
`endif
`ifdef APPLY
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready)>0) begin
`endif
`ifdef WRITE_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag,
               sim_event.address)>0) begin
`endif
      $display(format_string,
               sim_event.tick, 
               sim_event.pipeline_data.vertex_id, 
               sim_event.pipeline_data.vertex_id_addr, 
               sim_event.pipeline_data.vertex_dst_id,
               sim_event.pipeline_data.vertex_dst_id_addr,
               sim_event.pipeline_data.edge_id, 
               sim_event.pipeline_data.vertex_data, 
               sim_event.pipeline_data.vertex_dst_data, 
               sim_event.pipeline_data.message_data, 
               sim_event.pipeline_data.vertex_temp_dst_data,
               sim_event.pipeline_data.edge_data, 
               sim_event.pipeline_data.edge_temp_data, 
               sim_event.pipeline_data.last_vertex, 
               sim_event.pipeline_data.last_edge, 
               sim_event.pipeline_data.updated, 
`ifdef READ_SRC_PROPERTY      
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result,
               sim_event.address,
               sim_event.queue_length,
               sim_event.iteration_reset);
`endif
`ifdef READ_SRC_EDGES
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.edges_empty,
               sim_event.edge_data,
               sim_event.dst_id_curr,
               sim_event.address_curr,
               sim_event.num_edges_curr);
`endif
`ifdef READ_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result);
`endif
`ifdef PROCESS_EDGE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready);
`endif
`ifdef CONTROL_ATOMIC_UPDATE
               sim_event.valid,
               sim_event.ready,
               sim_event.p7_dst_id,
               sim_event.p8_dst_id,
               sim_event.p9_dst_id);
`endif
`ifdef READ_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result);
`endif
`ifdef REDUCE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready);
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag);
`endif
`ifdef READ_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result,
               sim_event.address,
               sim_event.queue_length,
               sim_event.iteration_reset);
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result);
`endif
`ifdef APPLY
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready);
`endif
`ifdef WRITE_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag,
               sim_event.address);
`endif
    end
    else begin
      done = 1;
      $fclose(fd);
    end
  end

  always begin
    #1 clk = !clk;
    if(curr_tick == sim_event.tick) begin
      // Assign signals from test vector file
      in_data.vertex_id = sim_event.pipeline_data.vertex_id;
      in_data.vertex_id_addr = sim_event.pipeline_data.vertex_id_addr;
      in_data.vertex_dst_id = sim_event.pipeline_data.vertex_dst_id;
      in_data.vertex_dst_id_addr = sim_event.pipeline_data.vertex_dst_id_addr;
      in_data.edge_id = sim_event.pipeline_data.edge_id;
      in_data.vertex_data = sim_event.pipeline_data.vertex_data;
      in_data.vertex_dst_data = sim_event.pipeline_data.vertex_dst_data;
      in_data.message_data = sim_event.pipeline_data.message_data;
      in_data.vertex_temp_dst_data = sim_event.pipeline_data.vertex_temp_dst_data;
      in_data.edge_data = sim_event.pipeline_data.edge_data;
      in_data.edge_temp_data = sim_event.pipeline_data.edge_temp_data;
      in_data.last_vertex = sim_event.pipeline_data.last_vertex;
      in_data.last_edge = sim_event.pipeline_data.last_edge;
      in_data.updated = sim_event.pipeline_data.updated;
`ifdef READ_SRC_PROPERTY
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
      ready = sim_event.ready[0];
      mem_result = sim_event.mem_result;
      address = sim_event.address;
      queue_length = sim_event.queue_length;
      iteration_reset = sim_event.iteration_reset[0];
`endif
`ifdef READ_SRC_EDGES
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
      ready = sim_event.ready[0];
      edges_empty = sim_event.edges_empty[0];
      edge_data = sim_event.edge_data;
      dst_id = sim_event.dst_id_curr;
      address = sim_event.address_curr;
      num_edges = sim_event.num_edges_curr;
`endif
`ifdef READ_DST_PROPERTY
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
      ready = sim_event.ready[0];
      mem_result = sim_event.mem_result;
`endif
`ifdef PROCESS_EDGE
      valid = sim_event.valid[0];
      complete = sim_event.complete[0];
      ready = sim_event.ready[0];
`endif
`ifdef CONTROL_ATOMIC_UPDATE
      valid = sim_event.valid[0];
      ready = sim_event.ready[0];
      p7_dst_id = sim_event.p7_dst_id;
      p8_dst_id = sim_event.p8_dst_id;
      p9_dst_id = sim_event.p9_dst_id;
`endif
`ifdef READ_TEMP_DST_PROPERTY
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
      ready = sim_event.ready[0];
      mem_result = sim_event.mem_result;
`endif
`ifdef REDUCE
      valid = sim_event.valid[0];
      complete = sim_event.complete[0];
      ready = sim_event.ready[0];
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
`endif
`ifdef READ_VERTEX_PROPERTY
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
      ready = sim_event.ready[0];
      mem_result = sim_event.mem_result;
      address = sim_event.address;
      queue_length = sim_event.queue_length;
      iteration_reset = sim_event.iteration_reset[0];
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
      ready = sim_event.ready[0];
      mem_result = sim_event.mem_result;
`endif
`ifdef APPLY
      valid = sim_event.valid[0];
      complete = sim_event.complete[0];
      ready = sim_event.ready[0];
`endif
`ifdef WRITE_VERTEX_PROPERTY
      valid = sim_event.valid[0];
      mem_flag = sim_event.mem_flag[0];
      address = sim_event.address;
`endif
      
      // Read in new test vectors 
      if (done != 1) begin
        if($fscanf(fd, 
                   format_string,
                   sim_event.tick, 
                   sim_event.pipeline_data.vertex_id, 
                   sim_event.pipeline_data.vertex_id_addr, 
                   sim_event.pipeline_data.vertex_dst_id,
                   sim_event.pipeline_data.vertex_dst_id_addr,
                   sim_event.pipeline_data.edge_id, 
                   sim_event.pipeline_data.vertex_data, 
                   sim_event.pipeline_data.vertex_dst_data, 
                   sim_event.pipeline_data.message_data, 
                   sim_event.pipeline_data.vertex_temp_dst_data,
                   sim_event.pipeline_data.edge_data, 
                   sim_event.pipeline_data.edge_temp_data, 
                   sim_event.pipeline_data.last_vertex, 
                   sim_event.pipeline_data.last_edge, 
                   sim_event.pipeline_data.updated, 
`ifdef READ_SRC_PROPERTY      
                   sim_event.valid, 
                   sim_event.mem_flag, 
                   sim_event.ready, 
                   sim_event.mem_result,
                   sim_event.address,
                   sim_event.queue_length,
                   sim_event.iteration_reset)>0) begin
`endif
`ifdef READ_SRC_EDGES
                   sim_event.valid, 
                   sim_event.mem_flag, 
                   sim_event.ready, 
                   sim_event.edges_empty,
                   sim_event.edge_data,
                   sim_event.dst_id_curr,
                   sim_event.address_curr,
                   sim_event.num_edges_curr)>0) begin
`endif
`ifdef READ_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result)>0) begin
`endif
`ifdef PROCESS_EDGE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready)>0) begin
`endif
`ifdef CONTROL_ATOMIC_UPDATE
               sim_event.valid,
               sim_event.ready,
               sim_event.p7_dst_id,
               sim_event.p8_dst_id,
               sim_event.p9_dst_id)>0) begin
`endif
`ifdef READ_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result)>0) begin
`endif
`ifdef REDUCE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready)>0) begin
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag)>0) begin
`endif
`ifdef READ_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result,
               sim_event.address,
               sim_event.queue_length,
               sim_event.iteration_reset)>0) begin
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result)>0) begin
`endif
`ifdef APPLY
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready)>0) begin
`endif
`ifdef WRITE_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag,
               sim_event.address)>0) begin
`endif
          $display(format_string,
                   sim_event.tick, 
                   sim_event.pipeline_data.vertex_id, 
                   sim_event.pipeline_data.vertex_id_addr, 
                   sim_event.pipeline_data.vertex_dst_id,
                   sim_event.pipeline_data.vertex_dst_id_addr,
                   sim_event.pipeline_data.edge_id, 
                   sim_event.pipeline_data.vertex_data, 
                   sim_event.pipeline_data.vertex_dst_data, 
                   sim_event.pipeline_data.message_data, 
                   sim_event.pipeline_data.vertex_temp_dst_data,
                   sim_event.pipeline_data.edge_data, 
                   sim_event.pipeline_data.edge_temp_data, 
                   sim_event.pipeline_data.last_vertex, 
                   sim_event.pipeline_data.last_edge, 
                   sim_event.pipeline_data.updated, 
`ifdef READ_SRC_PROPERTY      
                   sim_event.valid, 
                   sim_event.mem_flag, 
                   sim_event.ready, 
                   sim_event.mem_result,
                   sim_event.address,
                   sim_event.queue_length,
                   sim_event.iteration_reset);
`endif
`ifdef READ_SRC_EDGES
                   sim_event.valid, 
                   sim_event.mem_flag, 
                   sim_event.ready, 
                   sim_event.edges_empty,
                   sim_event.edge_data,
                   sim_event.dst_id_curr,
                   sim_event.address_curr,
                   sim_event.num_edges_curr);
`endif
`ifdef READ_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result);
`endif
`ifdef PROCESS_EDGE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready);
`endif
`ifdef CONTROL_ATOMIC_UPDATE
               sim_event.valid,
               sim_event.ready,
               sim_event.p7_dst_id,
               sim_event.p8_dst_id,
               sim_event.p9_dst_id);
`endif
`ifdef READ_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result);
`endif
`ifdef REDUCE
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready);
`endif
`ifdef WRITE_TEMP_DST_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag);
`endif
`ifdef READ_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result,
               sim_event.address,
               sim_event.queue_length,
               sim_event.iteration_reset);
`endif
`ifdef READ_TEMP_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag, 
               sim_event.ready, 
               sim_event.mem_result);
`endif
`ifdef APPLY
               sim_event.valid, 
               sim_event.complete, 
               sim_event.ready);
`endif
`ifdef WRITE_VERTEX_PROPERTY
               sim_event.valid, 
               sim_event.mem_flag,
               sim_event.address);
`endif
        end
        else begin
          done = 1;
        end
      end
    end
    if(done == 1) begin 
      $display("Ending sim: done = %d", done);
      $fclose(fd);
      $stop;
    end
    if(clk == 1'b1) begin
      curr_tick = curr_tick + 1;
    end
  end
endmodule
