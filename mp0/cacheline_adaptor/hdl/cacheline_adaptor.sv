module cacheline_adaptor
(
    input clk,
    input reset_n,

    // Port to LLC (Lowest Level Cache)
    input logic [255:0] line_i,
    output logic [255:0] line_o,
    input logic [31:0] address_i,
    input read_i,
    input write_i,
    output logic resp_o,

    // Port to memory
    input logic [63:0] burst_i,
    output logic [63:0] burst_o,
    output logic [31:0] address_o,
    output logic read_o,
    output logic write_o,
    input resp_i
);

logic [63:0] burst0;
logic [63:0] burst1;
logic [63:0] burst2;
logic [63:0] burst3;

enum int unsigned{
  idle,
  start,
  s_burst0,
  s_burst1,
  s_burst2,
  s_burst3,
  finish
} state, next_state;

always_comb
begin : state_actions
  if(reset_n) begin
    read_o = 0;
    write_o = 0;
    resp_o = 0;
  end
  case(state)
    idle: begin
      read_o = 0;
      write_o = 0;
      resp_o = 0;
    end
    start: begin
      address_o = address_i;
      read_o = 1;
    end
    s_burst0:
      burst0 = burst_i;
    s_burst1:
      burst1 = burst_i;
    s_burst2:
      burst2 = burst_i;
    s_burst3:
      burst3 = burst_i;
    finish: begin
      line_o = {burst3, burst2, burst1, burst0};
      read_o = 0;
      resp_o = 1;
    end
  endcase
end

always_comb
begin : next_state_logic
  next_state = state;
  case(state)
    idle: begin
      if(read_i == 1) next_state = start;
    end
    start: begin
      if(read_o == 0 && resp_i == 1) next_state = s_burst0;
    end
    s_burst0: begin
      if(read_o == 0 && resp_i == 1) next_state = s_burst1;
    end
    s_burst1: begin
      if(read_o == 0 && resp_i == 1) next_state = s_burst2;
    end
    s_burst2: begin
      if(read_o == 0 && resp_i == 1) next_state = s_burst3;
    end
    s_burst3: begin
      if(resp_i == 0) next_state = finish;
    end
    finish: next_state = idle;
  endcase
end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
    state <= next_state;
end

endmodule : cacheline_adaptor
