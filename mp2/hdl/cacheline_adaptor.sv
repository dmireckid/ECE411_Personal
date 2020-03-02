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
logic v1,v2,v3,v0;

enum int unsigned{
  idle,
  start_r,
  start_w,
  r_burst0,
  r_burst1,
  r_burst2,
  r_burst3,
  w_burst0,
  w_burst1,
  w_burst2,
  w_burst3,
  finish,
  winish
} state, next_state;

always_comb
begin : state_actions
  if(reset_n) begin
    read_o = 0;
    write_o = 0;
    resp_o = 0;
    v1=0;
    v2=0;
    v3=0;
    v0=0;
  end
  case(state)
    idle: begin
      read_o = 0;
      write_o = 0;
      resp_o = 0;
      v1=0;
      v2=0;
      v3=0;
      v0=0;
    end
    start_r: begin

    end
    start_w: begin
      address_o = address_i;
      write_o = 1;
    end
    r_burst0: begin
      burst0 = burst_i;
      v0 = 1;
      //$display("Burst 0 is: %h", burst0);
      end
    r_burst1: begin
      burst1 = burst_i;
      v1=1;
      //$display("Burst 1 is: %h", burst1);
      end
    r_burst2: begin
      burst2 = burst_i;
      v2=1;
      //$display("Burst 2 is: %h", burst2);
      end
    r_burst3: begin
      burst3 = burst_i;
      v3=1;
      //$display("Burst 3 is: %h", burst3);
      end
    w_burst0: begin
      burst_o = line_i[63:0];
      $display("Write 0 is: %h", burst_o);
    end
    w_burst1: begin
      burst_o = line_i[127:64];
      $display("Write 1 is: %h", burst_o);
    end
    w_burst2: begin
      burst_o = line_i[191:128];
      $display("Write 2 is: %h", burst_o);
    end
    w_burst3: begin
      burst_o = line_i[255:192];
      $display("Write 3 is: %h", burst_o);
    end
    winish: begin
      write_o = 0;
      resp_o = 1;
    end
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
      if(read_i == 1) next_state = start_r;
      else if(write_i == 1) next_state = start_w;
    end
    start_r: begin
      if(resp_i == 1) next_state = r_burst0;
    end
    start_w: begin
      if(resp_i == 1) next_state = w_burst0;
    end
    r_burst0: begin
      next_state = r_burst1;
    end
    r_burst1: begin
      next_state = r_burst2;
    end
    r_burst2: begin
      next_state = r_burst3;
    end
    r_burst3: begin
      if(resp_i == 0 && v3) next_state = finish;
    end
    w_burst0: begin
      next_state = w_burst1;
    end
    w_burst1: begin
      next_state = w_burst2;
    end
    w_burst2: begin
      next_state = w_burst3;
    end
    w_burst3: begin
      if(resp_i==0) next_state = winish;
    end
    finish: next_state = idle;
    winish: next_state = idle;
  endcase
end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
    state <= next_state;
end

endmodule : cacheline_adaptor
