module cache #(
    parameter s_offset = 5,
    parameter s_index  = 3,
    parameter s_tag    = 32 - s_offset - s_index,
    parameter s_mask   = 2**s_offset,
    parameter s_line   = 8*s_mask,
    parameter num_sets = 2**s_index  
)
(
    input clk,
    input rst,
    input rv32i_mem_wmask mem_byte_enable,

    input rv32i_word mem_address,
    input rv32i_word mem_wdata,
    input mem_read,
    input mem_write,
    input pmem_resp,
    input [255:0] pmem_rdata,

    output rv32i_word pmem_address,
    output logic [255:0] pmem_wdata,
    output logic pmem_read,
    output logic pmem_write,
    output logic mem_resp,
    output rv32i_word mem_rdata
);

logic hit1;
logic hit2;
logic valid1;
logic valid2;
logic dirty1;
logic dirty2;
logic lru_out;
logic [7:0] data_w1, data_w2;
logic data_r1, data_r2;
logic load_tag1, load_tag2;
logic read_tag1, read_tag2;
logic load_valid1, load_valid2;
logic read_valid1, read_valid2;
logic load_dirty1, load_dirty2;
logic read_dirty1, read_dirty2;
logic load_lru;
logic valid_in;
logic dirty_in;
logic lru_in;
logic path_sel;
logic [1:0] pmem_sel;
logic data_sel;
logic load_pmem_wdata;

cache_control control
(.*
);

cache_datapath datapath
(.*
);

bus_adapter bus_adapter
(.*
);

endmodule : cache
