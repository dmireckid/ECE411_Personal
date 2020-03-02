import rv32i_types::*;

module cache_writer(
	input rv32i_mem_wmask mem_byte_enable,
	input rv32i_word mem_wdata,
	input logic [4:0] offset,
	input logic [255:0] cachemux_out,
	output logic [255:0] cache_wout
);

logic [7:0] byte1, byte2, byte3, byte4;
int offset_int;

assign offset_int = int'(offset);

always_comb begin
	byte1 = mem_wdata[7:0];
	byte2 = mem_wdata[15:8];
	byte3 = mem_wdata[23:16];
	byte4 = mem_wdata[31:24];
	if(mem_byte_enable[0] == 0 && offset_int < 32) byte1 = cachemux_out[((offset_int*8)+7) : (offset_int*8)];
	if(mem_byte_enable[1] == 0 && offset_int < 31) byte2 = cachemux_out[((offset_int*8)+15) : ((offset_int*8)+8)];
	if(mem_byte_enable[2] == 0 && offset_int < 29) byte3 = cachemux_out[((offset_int*8)+23) : ((offset_int*8)+16)];
	if(mem_byte_enable[3] == 0 && offset_int < 29) byte4 = cachemux_out[((offset_int*8)+31) : ((offset_int*8)+24)];
	if(offset == 5'b00000) cache_wout = {cachemux_out[255:32], byte4, byte3, byte2, byte1};
	else if(offset == 5'b00001) cache_wout = {cachemux_out[255:40], byte4, byte3, byte2, byte1, cachemux_out[7:0]};
	else if(offset == 5'b00010) cache_wout = {cachemux_out[255:48], byte4, byte3, byte2, byte1, cachemux_out[15:0]};
	else if(offset == 5'b00011) cache_wout = {cachemux_out[255:56], byte4, byte3, byte2, byte1, cachemux_out[23:0]};
	else if(offset == 5'b00100) cache_wout = {cachemux_out[255:64], byte4, byte3, byte2, byte1, cachemux_out[31:0]};
	else if(offset == 5'b00101) cache_wout = {cachemux_out[255:72], byte4, byte3, byte2, byte1, cachemux_out[39:0]};
	else if(offset == 5'b00110) cache_wout = {cachemux_out[255:80], byte4, byte3, byte2, byte1, cachemux_out[47:0]};
	else if(offset == 5'b00111) cache_wout = {cachemux_out[255:88], byte4, byte3, byte2, byte1, cachemux_out[55:0]};
	else if(offset == 5'b01000) cache_wout = {cachemux_out[255:96], byte4, byte3, byte2, byte1, cachemux_out[63:0]};
	else if(offset == 5'b01001) cache_wout = {cachemux_out[255:104], byte4, byte3, byte2, byte1, cachemux_out[71:0]};
	else if(offset == 5'b01010) cache_wout = {cachemux_out[255:112], byte4, byte3, byte2, byte1, cachemux_out[79:0]};
	else if(offset == 5'b01011) cache_wout = {cachemux_out[255:120], byte4, byte3, byte2, byte1, cachemux_out[87:0]};
	else if(offset == 5'b01100) cache_wout = {cachemux_out[255:128], byte4, byte3, byte2, byte1, cachemux_out[95:0]};
	else if(offset == 5'b01101) cache_wout = {cachemux_out[255:136], byte4, byte3, byte2, byte1, cachemux_out[103:0]};
	else if(offset == 5'b01110) cache_wout = {cachemux_out[255:144], byte4, byte3, byte2, byte1, cachemux_out[111:0]};
	else if(offset == 5'b01111) cache_wout = {cachemux_out[255:152], byte4, byte3, byte2, byte1, cachemux_out[119:0]};
	else if(offset == 5'b10000) cache_wout = {cachemux_out[255:160], byte4, byte3, byte2, byte1, cachemux_out[127:0]};
	else if(offset == 5'b10001) cache_wout = {cachemux_out[255:168], byte4, byte3, byte2, byte1, cachemux_out[135:0]};
	else if(offset == 5'b10010) cache_wout = {cachemux_out[255:176], byte4, byte3, byte2, byte1, cachemux_out[143:0]};
	else if(offset == 5'b10011) cache_wout = {cachemux_out[255:184], byte4, byte3, byte2, byte1, cachemux_out[151:0]};
	else if(offset == 5'b10100) cache_wout = {cachemux_out[255:192], byte4, byte3, byte2, byte1, cachemux_out[159:0]};
	else if(offset == 5'b10101) cache_wout = {cachemux_out[255:200], byte4, byte3, byte2, byte1, cachemux_out[167:0]};
	else if(offset == 5'b10110) cache_wout = {cachemux_out[255:208], byte4, byte3, byte2, byte1, cachemux_out[175:0]};
	else if(offset == 5'b10111) cache_wout = {cachemux_out[255:216], byte4, byte3, byte2, byte1, cachemux_out[183:0]};
	else if(offset == 5'b11000) cache_wout = {cachemux_out[255:224], byte4, byte3, byte2, byte1, cachemux_out[191:0]};
	else if(offset == 5'b11001) cache_wout = {cachemux_out[255:232], byte4, byte3, byte2, byte1, cachemux_out[199:0]};
	else if(offset == 5'b11010) cache_wout = {cachemux_out[255:240], byte4, byte3, byte2, byte1, cachemux_out[207:0]};
	else if(offset == 5'b11011) cache_wout = {cachemux_out[255:248], byte4, byte3, byte2, byte1, cachemux_out[215:0]};
	else if(offset == 5'b11100) cache_wout = {byte4, byte3, byte2, byte1, cachemux_out[223:0]};
	else if(offset == 5'b11101) cache_wout = {cachemux_out[255:248], byte2, byte1, cachemux_out[231:0]};
	else if(offset == 5'b11110) cache_wout = {byte2, byte1, cachemux_out[239:0]};
	else if(offset == 5'b11111) cache_wout = {byte1, cachemux_out[247:0]};
	else cache_wout = cachemux_out;
end

endmodule : cache_writer