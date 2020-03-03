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

function void set_defaults();
	  read_o = 0;
      write_o = 0;
      resp_o = 0;
		address_o = address_i;
		burst_o = 64'b0;
		burst0 = 64'b0;
		burst1 = 64'b0;
		burst2 = 64'b0;
		burst3 = 64'b0;
endfunction

always_latch
begin : state_actions
	set_defaults();
  case(state)
    idle: begin
      read_o = 0;
      write_o = 0;
      resp_o = 0;
    end
    start_r: begin
      address_o = address_i;
      read_o = 1;
	  write_o = 0;
    end
    start_w: begin
      address_o = address_i;
      write_o = 1;
	  read_o =0;
    end
    r_burst0: begin
      burst0 = burst_i;
      //$display("Burst 0 is: %h", burst0);
      end
    r_burst1: begin
      burst1 = burst_i;
      //$display("Burst 1 is: %h", burst1);
      end
    r_burst2: begin
      burst2 = burst_i;
      //$display("Burst 2 is: %h", burst2);
      end
    r_burst3: begin
      burst3 = burst_i;
      //$display("Burst 3 is: %h", burst3);
      end
    w_burst0: begin
      burst_o = line_i[63:0];
      //$display("Write 0 is: %h", burst_o);
    end
    w_burst1: begin
      burst_o = line_i[127:64];
      //$display("Write 1 is: %h", burst_o);
    end
    w_burst2: begin
      burst_o = line_i[191:128];
      //$display("Write 2 is: %h", burst_o);
    end
    w_burst3: begin
      burst_o = line_i[255:192];
      //$display("Write 3 is: %h", burst_o);
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
    default: ;
  endcase
end

always_comb
begin : next_state_logic
  if(reset_n) next_state = idle;
  else next_state = state;
  case(state)
    idle: begin
      if(read_i == 1) next_state = start_r;
      else if(write_i == 1) next_state = start_w;
    end
    start_r: begin
      next_state = r_burst0;
    end
    start_w: begin
      next_state = w_burst0;
    end
    r_burst0: begin
      if(resp_i == 1 && read_i == 0) next_state = r_burst1;
    end
    r_burst1: begin
      next_state = r_burst2;
    end
    r_burst2: begin
      next_state = r_burst3;
    end
    r_burst3: begin
      if(resp_i == 0) next_state = finish;
    end
    w_burst0: begin
      if(resp_i == 1 && read_i == 0) next_state = w_burst1;
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
    default: ;
  endcase
end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
    state <= next_state;
end

endmodule : cacheline_adaptor
