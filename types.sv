// Andrew Smith
// Common Types
// 
// 120419

typedef struct packed {
  logic [63:0] vertex_id;
  logic [63:0] vertex_dst_id;
  logic [63:0] edge_id;
  
  logic [63:0] vertex_data;
  logic [63:0] vertex_dst_data;
  logic [63:0] message_data;
  logic [63:0] edge_data;
  logic [63:0] edge_temp_data;
  logic last_vertex;
  logic last_edge;
} pipeline_data_t;

typedef struct packed {
  int unsigned tick;
  int unsigned ready, mem_flag, send; // _ready, _mem_flag, downstream_can_accept
  int unsigned mem_result;       // mem_result
  int unsigned vertex_id, vertex_dst_id, edge_id;
  int unsigned vertex_data, vertex_dst_data, message_data;
  shortreal edge_data, edge_temp_data;
  int unsigned last_vertex, last_edge;
} sim_event_t;

string sim_event_format_str = "%d,%d,%d,%d,%d,%d,%lf,%lf,%d,%d,%d,%d,%d,%d\n";
