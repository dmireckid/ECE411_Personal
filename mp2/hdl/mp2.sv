import rv32i_types::*;

module mp2
(
    input clk,
    input rst,
    input pmem_resp,
    input [63:0] pmem_rdata,
    output logic pmem_read,
    output logic pmem_write,
    output rv32i_word pmem_address,
    output [63:0] pmem_wdata
);

//logic [3:0] mem_byte_enable;
//logic mem_read, mem_write, mem_resp;
//rv32i_word mem_address, mem_wdata, mem_rdata;
logic mem_read_cc, mem_write_cc, mem_resp_cc;
rv32i_word mem_address_cc, mem_wdata_cc, mem_rdata_cc;
logic [3:0] mem_byte_enable_cc;

logic pmem_resp_a, pmem_read_a, pmem_write_a;
logic [63:0] pmem_rdata_a, pmem_wdata_a;
rv32i_word pmem_address_a;

// Keep cpu named `cpu` for RVFI Monitor
// Note: you have to rename your mp2 module to `cpu`
cpu cpu(
    .clk,
    .rst,
    .mem_resp(mem_resp_cc),
    .mem_rdata(mem_rdata_cc),
    //outputs
    .mem_read(mem_read_cc),
    .mem_write(mem_write_cc),
    .mem_byte_enable(mem_byte_enable_cc),
    .mem_address(mem_address_cc),
    .mem_wdata(mem_wdata_cc)
);

// Keep cache named `cache` for RVFI Monitor
cache cache(
    .clk,
    .rst,
    .mem_byte_enable(mem_byte_enable_cc),
    //inputs
    .mem_address(mem_address_cc),
    .mem_wdata(mem_wdata_cc),
    .mem_read(mem_read_cc),
    .mem_write(mem_write_cc),
    .pmem_resp(pmem_resp_a),
    .pmem_rdata(pmem_rdata_a),
    //output
    .pmem_address(pmem_address_a),
    .pmem_wdata(pmem_wdata_a),
    .pmem_read(pmem_read_a),
    .pmem_write(pmem_write_a),
    .mem_resp(mem_resp_cc),
    .mem_rdata(mem_rdata_cc)
);

// From MP0
cacheline_adaptor cacheline_adaptor(
    .clk(clk),
    .reset_n(rst),
    .line_i(pmem_wdata_a),
    .line_o(pmem_rdata_a),
    .address_i(pmem_address_a),
    .read_i(pmem_read_a),
    .write_i(pmem_write_a),
    .resp_o(pmem_resp_a),
    .burst_i(pmem_rdata),
    .burst_o(pmem_wdata),
    .address_o(pmem_address),
    .read_o(pmem_read),
    .write_o(pmem_write),
    .resp_i(pmem_resp)
);

endmodule : mp2
