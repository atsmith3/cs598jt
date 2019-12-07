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
