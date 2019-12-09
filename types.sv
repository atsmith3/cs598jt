// Andrew Smith
// Common Types
// 
// 120419

typedef struct packed {
  logic [63:0] vertex_id;
  logic [63:0] vertex_id_addr;
  logic [63:0] vertex_dst_id;
  logic [63:0] vertex_dst_id_addr;
  logic [63:0] edge_id;
  logic [63:0] vertex_data;
  logic [63:0] vertex_dst_data;
  logic [63:0] message_data;
  logic [63:0] vertex_temp_dst_data;
  logic [63:0] edge_data;
  logic [63:0] edge_temp_data;
  logic last_vertex;
  logic last_edge;
  logic updated;
} pipeline_data_t;

typedef struct {
  int unsigned vertex_id;
  int unsigned vertex_id_addr;
  int unsigned vertex_dst_id;
  int unsigned vertex_dst_id_addr; 
  int unsigned edge_id;
  int unsigned vertex_data;
  int unsigned vertex_dst_data; 
  int unsigned message_data; 
  int unsigned vertex_temp_dst_data;
  shortreal edge_data;
  shortreal edge_temp_data;
  int unsigned last_vertex;
  int unsigned last_edge;
  int unsigned updated;
} pd_t;

//
// READ SOURCE PROPERTY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
  int unsigned ready;
  int unsigned mem_result; 
  int unsigned address; int unsigned queue_length;
  int unsigned iteration_reset;
} sim_event_read_src_property_t;

//
// READ SOURCE EDGES
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
  int unsigned ready;
  int unsigned edges_empty; 
  shortreal edge_data;
  int unsigned dst_id_curr;
  int unsigned address_curr;
  int unsigned num_edges_curr;
} sim_event_read_src_edges_t;

//
// READ DESTINATION PROPERTY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
  int unsigned ready;
  int unsigned mem_result; 
} sim_event_read_dst_property_t;


//
// PROCESS EDGE
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned complete;
  int unsigned ready;
} sim_event_process_edge_t;


//
// CONTROL ATOMIC UPDATE
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned ready;
  int unsigned p7_dst_id;
  int unsigned p8_dst_id;
  int unsigned p9_dst_id;
} sim_event_control_atomic_update_t;


//
// READ TEMPORARY DESTINATION PROPERTY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
  int unsigned ready;
  int unsigned mem_result; 
} sim_event_read_temp_dst_property_t;


//
// REDUCE
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned complete;
  int unsigned ready;
} sim_event_reduce_t;


//
// WRITE TEMPORARY DESTINATION PROPERTY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
} sim_event_write_tmp_dst_property_t;


//
// READ VERTEX PROPERTY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
  int unsigned ready;
  int unsigned mem_result; 
  int unsigned address;
  int unsigned queue_length;
  int unsigned iteration_reset;
} sim_event_read_vertex_property_t;


//
// READ TEMPORARY VERTEX PROPERTY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
  int unsigned ready;
  int unsigned mem_result; 
} sim_event_read_temp_vertex_property_t;


//
// APPLY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned complete;
  int unsigned ready;
} sim_event_apply_t;


//
// WRITE TEMPORARY DESTINATION PROPERTY
//
typedef struct {
  int unsigned tick;
  pd_t pipeline_data;
  int unsigned valid;
  int unsigned mem_flag;
  int unsigned address;
} sim_event_write_vertex_property_t;
