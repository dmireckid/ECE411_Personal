module cache_datapath #(
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
    input logic data_r1,
    input logic data_r2,
    input logic [7:0] data_w1,
    input logic [7:0] data_w2,
    input logic load_tag1, 
    input logic load_tag2,
    input logic read_tag1,
    input logic read_tag2,
    input logic load_valid1, 
    input logic load_valid2,
    input logic read_valid1,
    input logic read_valid2,
    input logic load_dirty1, 
    input logic load_dirty2,
    input logic read_dirty1,
    input logic read_dirty2,
    input logic load_lru,
    input logic valid_in,
    input logic dirty_in,
    input logic lru_in,

    input rv32i_mem_wmask mem_byte_enable,
    input rv32i_word mem_address,
    input rv32i_word mem_wdata,
    input [255:0] pmem_rdata,

    input logic data_sel,
    input logic path_sel,
    input logic [1:0] pmem_sel,
    input logic load_pmem_wdata,
    
    output rv32i_word pmem_address,
    output [255:0] pmem_wdata,
    output rv32i_word mem_rdata,

    output logic hit1,
    output logic hit2,
    output logic valid1,
    output logic valid2,
    output logic dirty1,
    output logic dirty2,
    output logic lru_out
);

logic [255:0] data1,data2,data_in,cache_wout,cachemux_out;
logic [4:0] offset, select1, select2, select3;
logic [2:0] index;
logic [23:0] tag1, tag2, tag_in;
//int offset_int;

assign offset = mem_address[4:0];
//assign offset_int = int'(offset);
assign index = mem_address[7:5];
assign tag_in = mem_address[31:8];

always_ff begin
    if (tag_in == tag1) hit1 = valid1;
    if (tag_in == tag2) hit2 = valid2;
    //assign mem_rdata[7:0] = cachemux_out[((offset*5'd8)+5'd7) : (offset * 5'd8)];
    //assign mem_rdata[15:8] = cachemux_out[(((offset+5'd1)*5'd8)+5'd7) : ((offset+1) * 5'd8)];
    //assign mem_rdata[23:16] = cachemux_out[(((offset+2)*5'd8)+5'd7) : ((offset+2) * 5'd8)];
    //assign mem_rdata[31:24] = cachemux_out[(((offset+3)*5'd8)+5'd7) : ((offset+3) * 5'd8)];
end

data_array data_array1(
    .clk(clk),
    .rst(rst),
    .read(data_r1),
    .write_en(data_w1),
    .rindex(index),
    .windex(index),
    .datain(data_in),
    .dataout(data1)
);
data_array data_array2(
    .clk(clk),
    .rst(rst),
    .read(data_r2),
    .write_en(data_w2),
    .rindex(index),
    .windex(index),
    .datain(data_in),
    .dataout(data2)
);

array #(.width(24)) tag_array1(
    .clk(clk),
    .rst(rst),
    .read(read_tag1),
    .load(load_tag1),
    .rindex(index),
    .windex(index),
    .datain(tag_in),
    .dataout(tag1)
);
array #(.width(24)) tag_array2(
    .clk(clk),
    .rst(rst),
    .read(read_tag2),
    .load(load_tag2),
    .rindex(index),
    .windex(index),
    .datain(tag_in),
    .dataout(tag2)
);

array valid_array1(
    .clk(clk),
    .rst(rst),
    .read(read_valid1),
    .load(load_valid1),
    .rindex(index),
    .windex(index),
    .datain(valid_in),
    .dataout(valid1)
);
array valid_array2(
    .clk(clk),
    .rst(rst),
    .read(read_valid2),
    .load(load_valid2),
    .rindex(index),
    .windex(index),
    .datain(valid_in),
    .dataout(valid2)
);

array dirty_array1(
    .clk(clk),
    .rst(rst),
    .read(read_dirty1),
    .load(load_dirty1),
    .rindex(index),
    .windex(index),
    .datain(dirty_in),
    .dataout(dirty1)
);
array dirty_array2(
    .clk(clk),
    .rst(rst),
    .read(read_dirty2),
    .load(load_dirty2),
    .rindex(index),
    .windex(index),
    .datain(dirty_in),
    .dataout(dirty2)
);

register #(.width(256)) pmem_reg(
    .clk(clk),
    .rst(rst),
    .load(load_pmem_wdata),
    .in(cachemux_out),
    .out(pmem_wdata)
);

fourmux pmem_address_mux(
    .select(pmem_sel),
    .a({mem_address[31:5], 5'b00000}),
    .b({tag1, index, 5'b00000}),
    .c({tag2, index, 5'b00000}),
    .d(),
    .f(pmem_address)
);

array lru(
    .clk(clk),
    .rst(rst),
    .read(1'b1),
    .load(load_lru),
    .rindex(index),
    .windex(index),
    .datain(lru_in),
    .dataout(lru_out)
);

twomux #(.width(256)) cachemux(
    .select(path_sel),
    .a(data1),
    .b(data2),
    .f(cachemux_out)
);

cache_writer cache_writer(
    .mem_byte_enable(mem_byte_enable),
    .mem_wdata(mem_wdata),
    .offset(offset),
    .cachemux_out(cachemux_out),
    .cache_wout(cache_wout)
);

twomux #(.width(256)) data_mux(
    .select(data_sel),
    .a(pmem_rdata),
    .b(cache_wout),
    .f(data_in)
);

endmodule : cache_datapath
