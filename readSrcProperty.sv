// Andrew Smith
// ReadSrcProperty RTL:
//
// 120319

`include "types.sv"

module ReadSrcProperty(
  input logic clk,
  inout logic reset,
  input pipeline_data_t i_data,         // From previous stage
  input logic [63:0] src_data,          // From DRAM Mem
  input logic ready,                    // From Previous Stage
  input logic complete,                 // From DRAM Mem
  input logic n_stall_can_accept,       // From Next Pipeline Stage
  output logic p_stall_can_accept,      // To Previous Pipeline Stage
  output pipeline_data_t o_data
);

enum logic [1:0] {
  OP_WAIT,
  OP_MEM,
  OP_NUM_OPS
} state, next_state;

pipeline_data_t data;

initial begin
  state = OP_WAIT;
end

// FF Logic
always_ff @(posedge clk) begin
  if(reset==1'b1) begin
    state <= OP_WAIT;
  end
  else begin
    state <= next_state;
  end

  if(state==OP_WAIT && ready==1'b1) begin
    data <= i_data;
  end
end

assign o_data = data;

// Next State Logic:
always_comb begin
  next_state = state;
  case(state)
    OP_WAIT: begin
      if(ready==1'b1) begin
        next_state = OP_MEM;
      end
    end
    OP_MEM: begin
      if(complete==1'b1) begin
        next_state = OP_WAIT;
      end
    end
    default: begin

    end
  endcase
end

// Output logic
always_comb begin
  case(state)
    OP_WAIT: begin
      if(ready==1'b1) begin

      end
    end
    OP_MEM: begin
      if(complete==1'b1) begin

      end
    end
    default: begin

    end
  endcase
end

endmodule
