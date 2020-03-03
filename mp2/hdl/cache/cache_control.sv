module cache_control (
	input clk,
	input rst,
	input mem_read,
	input mem_write,
	input rv32i_mem_wmask mem_byte_enable,
	output logic mem_resp,
	input pmem_resp,
	output logic pmem_read,
	output logic pmem_write,
	input hit1,
	input hit2,
	input valid1,
    input valid2,
    input dirty1,
    input dirty2,
    input lru_out,
	output logic data_r1,
	output logic data_r2,
	output logic [7:0] data_w1,
	output logic [7:0] data_w2,
	output logic load_tag1, 
	output logic load_tag2,
	output logic read_tag1,
	output logic read_tag2,
	output logic load_valid1, 
	output logic load_valid2,
	output logic read_valid1,
	output logic read_valid2,
	output logic load_dirty1, 
	output logic load_dirty2,
	output logic read_dirty1,
	output logic read_dirty2,
	output logic load_lru,
	output logic valid_in,
	output logic dirty_in,
	output logic lru_in,
	output logic data_sel,
	output logic path_sel,
    output logic [1:0] pmem_sel,
    output logic load_pmem_wdata
);

enum int unsigned {
    /* List of states */
	read_write,
	write_back,
	mem_access
} state, next_state;

function void set_defaults();
	pmem_read = 0;
	pmem_write = 0;
	mem_resp = 0;
	data_r1 = 1;
	data_r2 = 1;
	data_w1 = 0;
	data_w2 = 0;
	load_tag1 = 0;
	load_tag2 = 0;
	read_tag1 = 1;
	read_tag2 = 1;
	load_valid1 = 0;
	load_valid2 = 0;
	read_valid1 = 1;
	read_valid2 = 1;
	load_dirty1 = 0;
	load_dirty2 = 0;
	read_dirty1 = 1;
	read_dirty2 = 1;
	load_lru = 0;
	valid_in = 0;
	dirty_in = 0;
	lru_in = 0;
	pmem_sel = 0;
	data_sel = 0;
	path_sel = 0;
	load_pmem_wdata = 0;
endfunction

always_comb
begin : state_actions
    /* Default output assignments */
    set_defaults();
	case(state)
		read_write: begin
			if(mem_read) begin
				if(hit1) begin
					mem_resp = 1;
					load_lru = 1;
					lru_in = 1;
					path_sel = 0;
				end
				else if(hit2) begin
					mem_resp = 1;
					load_lru = 1;
					lru_in = 0;
					path_sel = 1;
				end
				else begin
					mem_resp = 0;
					load_lru = 0;
					lru_in = 0;
					path_sel = 0;
				end
			end

			else if(mem_write) begin
				if(hit1) begin
					mem_resp = 1;
					load_lru = 1;
					lru_in = 1;
					path_sel = 0;
					dirty_in = 1;
					load_dirty1 = 1;
					data_r1 = 1;
					data_sel = 1;
				end
				else if(hit2) begin
					mem_resp = 1;
					load_lru = 1;
					lru_in = 0;
					path_sel = 1;
					dirty_in = 1;
					load_dirty2 = 1;
					data_r2 = 1;
					data_sel = 1;
				end
			end
		end

		write_back: begin
			load_pmem_wdata = 1;
			if(lru_out == 0) begin
				pmem_write = 1;
				pmem_sel = 1;
				dirty_in = 0;
				load_dirty1 = 1;
				path_sel = 0;
			end
			else if(lru_out == 1) begin
				pmem_write = 1;
				pmem_sel = 2;
				dirty_in = 0;
				load_dirty2 = 1;
				path_sel = 1;
			end
		end

		mem_access: begin
			pmem_read = 1;
			valid_in = 1;
			if(lru_out == 0) begin
				data_r1 = 1;
				load_tag1 = 1;
				load_valid1 = 1;
				path_sel = 0;
			end
			else if(lru_out == 1) begin
				data_r2 = 1;
				load_tag2 = 1;
				load_valid2 = 1;
				path_sel = 1;
			end
		end

		default: ;
	endcase
end

always_comb
begin : next_state_logic
    /* Next state information and conditions (if any)
     * for transitioning between states */
	 next_state = state;
	 case(state)
		read_write: begin
			if(valid1 && valid2) next_state = write_back;
			else if (dirty2 && lru_out) next_state = write_back;
			else next_state = mem_access;
		end
		write_back: begin
			if(pmem_resp) next_state = mem_access;
		end
		mem_access: begin
			if(pmem_resp) next_state = read_write;
		end
		default: next_state = read_write;
	 endcase
end

always_ff @(posedge clk)
begin: next_state_assignment
    /* Assignment of next state on clock edge */
	state <= next_state;
end

endmodule : cache_control
