# AG Report Generated 2020-03-05 00:55
This is a report about mp2 generated for mirecki2 at 2020-03-05 00:55. The autograder used commit ``4814f8ec731a`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
 - Targeted: 0/27 (0.0%)
 - Longer: NO
 - Timing: YES
### Compilation ![Failure][failure]
You did not succesfully compile. Your report is below.
<details>
<summary>Compilation Report</summary>

```
Info: *******************************************************************
Info: Running Quartus Prime Analysis & Synthesis
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Copyright (C) 2018  Intel Corporation. All rights reserved.
    Info: Your use of Intel Corporation's design tools, logic functions 
    Info: and other software and tools, and its AMPP partner logic 
    Info: functions, and any output files from any of the foregoing 
    Info: (including device programming or simulation files), and any 
    Info: associated documentation or information are expressly subject 
    Info: to the terms and conditions of the Intel Program License 
    Info: Subscription Agreement, the Intel Quartus Prime License Agreement,
    Info: the Intel FPGA IP License Agreement, or other applicable license
    Info: agreement, including, without limitation, that your use is for
    Info: the sole purpose of programming logic devices manufactured by
    Info: Intel and sold by Intel or its authorized distributors.  Please
    Info: refer to the applicable agreement for further details.
    Info: Processing started: Thu Mar  5 06:53:42 2020
Info: Command: quartus_map mp2 -c mp2
Info (20030): Parallel compilation is enabled and will use 4 of the 4 processors detected
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/array.sv
    Info (12023): Found entity 1: array File: /job/student/hdl/cache/array.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache.sv
    Info (12023): Found entity 1: cache File: /job/student/hdl/cache/cache.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_control.sv
    Info (12023): Found entity 1: cache_control File: /job/student/hdl/cache/cache_control.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_datapath.sv
    Info (12023): Found entity 1: cache_datapath File: /job/student/hdl/cache/cache_datapath.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_writer.sv
    Info (12023): Found entity 1: cache_writer File: /job/student/hdl/cache/cache_writer.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/compare.sv
    Info (12023): Found entity 1: compare File: /job/student/hdl/cache/compare.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/data_array.sv
    Info (12023): Found entity 1: data_array File: /job/student/hdl/cache/data_array.sv Line: 2
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/bus_adapter.sv
    Info (12023): Found entity 1: bus_adapter File: /job/student/hdl/cache/bus_adapter.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cacheline_adaptor.sv
    Info (12023): Found entity 1: cacheline_adaptor File: /job/student/hdl/cacheline_adaptor.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/cmp.sv
    Info (12023): Found entity 1: cmp File: /job/student/hdl/cpu/cmp.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/cpu.sv
    Info (12023): Found entity 1: cpu File: /job/student/hdl/cpu/cpu.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/cpu_control.sv
    Info (12023): Found entity 1: control File: /job/student/hdl/cpu/cpu_control.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/cpu_datapath.sv
    Info (12023): Found entity 1: datapath File: /job/student/hdl/cpu/cpu_datapath.sv Line: 5
Info (12021): Found 4 design units, including 4 entities, in source file hdl/cpu/mux.sv
    Info (12023): Found entity 1: twomux File: /job/student/hdl/cpu/mux.sv Line: 1
    Info (12023): Found entity 2: fourmux File: /job/student/hdl/cpu/mux.sv Line: 15
    Info (12023): Found entity 3: eightmux File: /job/student/hdl/cpu/mux.sv Line: 33
    Info (12023): Found entity 4: sixmux File: /job/student/hdl/cpu/mux.sv Line: 52
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/alu.sv
    Info (12023): Found entity 1: alu File: /job/student/hdl/cpu/alu.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/ir.sv
    Info (12023): Found entity 1: ir File: /job/student/hdl/cpu/ir.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/pc_reg.sv
    Info (12023): Found entity 1: pc_register File: /job/student/hdl/cpu/pc_reg.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/regfile.sv
    Info (12023): Found entity 1: regfile File: /job/student/hdl/cpu/regfile.sv Line: 2
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/register.sv
    Info (12023): Found entity 1: register File: /job/student/hdl/cpu/register.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/mp2.sv
    Info (12023): Found entity 1: mp2 File: /job/student/hdl/mp2.sv Line: 3
Info (12021): Found 5 design units, including 0 entities, in source file hdl/rv32i_mux_types.sv
    Info (12022): Found design unit 1: pcmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 4
    Info (12022): Found design unit 2: marmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 12
    Info (12022): Found design unit 3: cmpmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 19
    Info (12022): Found design unit 4: alumux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 26
    Info (12022): Found design unit 5: regfilemux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 42
Info (12021): Found 1 design units, including 0 entities, in source file hdl/rv32i_types.sv
    Info (12022): Found design unit 1: rv32i_types (SystemVerilog) File: /job/student/hdl/rv32i_types.sv Line: 5
Warning (10236): Verilog HDL Implicit Net warning at cache_datapath.sv(210): created implicit net for "mem_byte_enable" File: /job/student/hdl/cache/cache_datapath.sv Line: 210
Warning (10236): Verilog HDL Implicit Net warning at cache_datapath.sv(211): created implicit net for "mem_wdata" File: /job/student/hdl/cache/cache_datapath.sv Line: 211
Info (12127): Elaborating entity "mp2" for the top level hierarchy
Info (12128): Elaborating entity "cpu" for hierarchy "cpu:cpu" File: /job/student/hdl/mp2.sv Line: 39
Info (12128): Elaborating entity "control" for hierarchy "cpu:cpu|control:control" File: /job/student/hdl/cpu/cpu.sv Line: 45
Warning (10036): Verilog HDL or VHDL warning at cpu_control.sv(34): object "trap" assigned a value but never read File: /job/student/hdl/cpu/cpu_control.sv Line: 34
Warning (10036): Verilog HDL or VHDL warning at cpu_control.sv(35): object "rs1_addr" assigned a value but never read File: /job/student/hdl/cpu/cpu_control.sv Line: 35
Warning (10036): Verilog HDL or VHDL warning at cpu_control.sv(35): object "rs2_addr" assigned a value but never read File: /job/student/hdl/cpu/cpu_control.sv Line: 35
Warning (10036): Verilog HDL or VHDL warning at cpu_control.sv(36): object "rmask" assigned a value but never read File: /job/student/hdl/cpu/cpu_control.sv Line: 36
Warning (10036): Verilog HDL or VHDL warning at cpu_control.sv(36): object "wmask" assigned a value but never read File: /job/student/hdl/cpu/cpu_control.sv Line: 36
Info (10264): Verilog HDL Case Statement information at cpu_control.sv(411): all case item expressions in this case statement are onehot File: /job/student/hdl/cpu/cpu_control.sv Line: 411
Info (12128): Elaborating entity "datapath" for hierarchy "cpu:cpu|datapath:datapath" File: /job/student/hdl/cpu/cpu.sv Line: 48
Warning (10036): Verilog HDL or VHDL warning at cpu_datapath.sv(53): object "pc_plus4_out" assigned a value but never read File: /job/student/hdl/cpu/cpu_datapath.sv Line: 53
Info (12128): Elaborating entity "ir" for hierarchy "cpu:cpu|datapath:datapath|ir:IR" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 82
Info (12128): Elaborating entity "register" for hierarchy "cpu:cpu|datapath:datapath|register:MDR" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 90
Info (12128): Elaborating entity "alu" for hierarchy "cpu:cpu|datapath:datapath|alu:ALU" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 105
Info (12128): Elaborating entity "pc_register" for hierarchy "cpu:cpu|datapath:datapath|pc_register:PC" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 113
Info (12128): Elaborating entity "regfile" for hierarchy "cpu:cpu|datapath:datapath|regfile:regfile" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 125
Info (12128): Elaborating entity "cmp" for hierarchy "cpu:cpu|datapath:datapath|cmp:CMP" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 132
Info (12128): Elaborating entity "fourmux" for hierarchy "cpu:cpu|datapath:datapath|cmp:CMP|fourmux:cmpmux" File: /job/student/hdl/cpu/cmp.sv Line: 28
Info (12128): Elaborating entity "cache" for hierarchy "cache:cache" File: /job/student/hdl/mp2.sv Line: 60
Info (12128): Elaborating entity "cache_control" for hierarchy "cache:cache|cache_control:control" File: /job/student/hdl/cache/cache.sv Line: 96
Info (12128): Elaborating entity "cache_datapath" for hierarchy "cache:cache|cache_datapath:datapath" File: /job/student/hdl/cache/cache.sv Line: 143
Warning (10034): Output port "mem_rdata256" at cache_datapath.sv(45) has no driver File: /job/student/hdl/cache/cache_datapath.sv Line: 45
Info (12128): Elaborating entity "compare" for hierarchy "cache:cache|cache_datapath:datapath|compare:compare1" File: /job/student/hdl/cache/cache_datapath.sv Line: 81
Info (12128): Elaborating entity "data_array" for hierarchy "cache:cache|cache_datapath:datapath|data_array:data_array1" File: /job/student/hdl/cache/cache_datapath.sv Line: 99
Info (12128): Elaborating entity "array" for hierarchy "cache:cache|cache_datapath:datapath|array:tag_array1" File: /job/student/hdl/cache/cache_datapath.sv Line: 120
Info (12128): Elaborating entity "array" for hierarchy "cache:cache|cache_datapath:datapath|array:valid_array1" File: /job/student/hdl/cache/cache_datapath.sv Line: 141
Info (12128): Elaborating entity "register" for hierarchy "cache:cache|cache_datapath:datapath|register:pmem_reg" File: /job/student/hdl/cache/cache_datapath.sv Line: 180
Info (12128): Elaborating entity "fourmux" for hierarchy "cache:cache|cache_datapath:datapath|fourmux:pmem_address_mux" File: /job/student/hdl/cache/cache_datapath.sv Line: 189
Info (12128): Elaborating entity "twomux" for hierarchy "cache:cache|cache_datapath:datapath|twomux:cachemux" File: /job/student/hdl/cache/cache_datapath.sv Line: 207
Info (12128): Elaborating entity "cache_writer" for hierarchy "cache:cache|cache_datapath:datapath|cache_writer:cache_writer" File: /job/student/hdl/cache/cache_datapath.sv Line: 215
Info (12128): Elaborating entity "bus_adapter" for hierarchy "cache:cache|bus_adapter:bus_adapter" File: /job/student/hdl/cache/cache.sv Line: 153
Info (12128): Elaborating entity "cacheline_adaptor" for hierarchy "cacheline_adaptor:cacheline_adaptor" File: /job/student/hdl/mp2.sv Line: 78
Info (10041): Inferred latch for "line_o[0]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[1]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[2]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[3]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[4]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[5]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[6]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[7]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[8]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[9]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[10]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[11]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[12]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[13]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[14]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[15]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[16]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[17]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[18]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[19]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[20]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[21]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[22]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[23]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[24]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[25]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[26]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[27]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[28]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[29]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[30]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[31]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[32]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[33]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[34]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[35]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[36]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[37]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[38]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[39]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[40]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[41]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[42]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[43]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[44]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[45]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[46]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[47]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[48]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[49]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[50]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[51]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[52]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[53]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[54]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[55]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[56]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[57]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[58]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[59]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[60]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[61]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[62]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[63]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[64]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[65]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[66]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[67]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[68]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[69]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[70]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[71]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[72]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[73]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[74]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[75]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[76]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[77]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[78]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[79]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[80]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[81]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[82]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[83]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[84]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[85]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[86]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[87]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[88]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[89]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[90]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[91]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[92]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[93]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[94]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[95]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[96]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[97]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[98]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[99]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[100]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[101]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[102]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[103]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[104]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[105]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[106]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[107]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[108]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[109]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[110]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[111]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[112]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[113]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[114]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[115]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[116]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[117]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[118]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[119]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[120]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[121]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[122]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[123]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[124]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[125]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[126]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[127]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[128]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[129]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[130]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[131]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[132]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[133]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[134]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[135]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[136]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[137]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[138]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[139]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[140]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[141]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[142]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[143]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[144]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[145]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[146]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[147]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[148]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[149]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[150]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[151]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[152]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[153]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[154]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[155]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[156]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[157]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[158]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[159]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[160]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[161]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[162]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[163]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[164]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[165]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[166]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[167]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[168]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[169]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[170]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[171]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[172]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[173]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[174]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[175]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[176]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[177]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[178]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[179]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[180]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[181]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[182]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[183]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[184]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[185]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[186]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[187]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[188]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[189]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[190]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[191]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[192]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[193]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[194]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[195]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[196]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[197]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[198]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[199]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[200]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[201]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[202]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[203]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[204]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[205]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[206]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[207]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[208]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[209]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[210]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[211]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[212]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[213]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[214]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[215]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[216]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[217]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[218]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[219]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[220]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[221]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[222]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[223]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[224]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[225]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[226]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[227]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[228]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[229]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[230]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[231]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[232]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[233]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[234]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[235]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[236]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[237]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[238]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[239]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[240]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[241]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[242]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[243]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[244]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[245]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[246]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[247]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[248]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[249]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[250]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[251]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[252]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[253]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[254]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Info (10041): Inferred latch for "line_o[255]" at cacheline_adaptor.sv(57) File: /job/student/hdl/cacheline_adaptor.sv Line: 57
Warning (12241): 4 hierarchies have connectivity warnings - see the Connectivity Checks report folder
Warning (13024): Output pins are stuck at VCC or GND
    Warning (13410): Pin "pmem_address[0]" is stuck at GND File: /job/student/hdl/mp2.sv Line: 11
    Warning (13410): Pin "pmem_address[1]" is stuck at GND File: /job/student/hdl/mp2.sv Line: 11
    Warning (13410): Pin "pmem_address[2]" is stuck at GND File: /job/student/hdl/mp2.sv Line: 11
    Warning (13410): Pin "pmem_address[3]" is stuck at GND File: /job/student/hdl/mp2.sv Line: 11
    Warning (13410): Pin "pmem_address[4]" is stuck at GND File: /job/student/hdl/mp2.sv Line: 11
Info (286030): Timing-Driven Synthesis is running
Info (17049): 105 registers lost all their fanouts during netlist optimizations.
Info (144001): Generated suppressed messages file /job/student/output_files/mp2.map.smsg
Info (16010): Generating hard_block partition "hard_block:auto_generated_inst"
    Info (16011): Adding 0 node(s), including 0 DDIO, 0 PLL, 0 transceiver and 0 LCELL
Warning (21074): Design contains 64 input pin(s) that do not drive logic
    Warning (15610): No output dependent on input pin "pmem_rdata[0]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[1]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[2]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[3]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[4]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[5]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[6]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[7]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[8]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[9]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[10]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[11]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[12]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[13]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[14]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[15]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[16]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[17]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[18]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[19]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[20]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[21]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[22]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[23]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[24]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[25]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[26]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[27]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[28]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[29]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[30]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[31]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[32]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[33]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[34]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[35]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[36]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[37]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[38]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[39]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[40]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[41]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[42]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[43]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[44]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[45]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[46]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[47]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[48]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[49]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[50]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[51]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[52]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[53]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[54]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[55]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[56]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[57]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[58]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[59]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[60]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[61]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[62]" File: /job/student/hdl/mp2.sv Line: 8
    Warning (15610): No output dependent on input pin "pmem_rdata[63]" File: /job/student/hdl/mp2.sv Line: 8
Info (21057): Implemented 885 device resources after synthesis - the final resource count might be different
    Info (21058): Implemented 67 input pins
    Info (21059): Implemented 98 output pins
    Info (21061): Implemented 720 logic cells
Info: Quartus Prime Analysis & Synthesis was successful. 0 errors, 81 warnings
    Info: Peak virtual memory: 1188 megabytes
    Info: Processing ended: Thu Mar  5 06:54:01 2020
    Info: Elapsed time: 00:00:19
    Info: Total CPU time (on all processors): 00:00:42
Info: *******************************************************************
Info: Running Quartus Prime Shell
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Copyright (C) 2018  Intel Corporation. All rights reserved.
    Info: Your use of Intel Corporation's design tools, logic functions 
    Info: and other software and tools, and its AMPP partner logic 
    Info: functions, and any output files from any of the foregoing 
    Info: (including device programming or simulation files), and any 
    Info: associated documentation or information are expressly subject 
    Info: to the terms and conditions of the Intel Program License 
    Info: Subscription Agreement, the Intel Quartus Prime License Agreement,
    Info: the Intel FPGA IP License Agreement, or other applicable license
    Info: agreement, including, without limitation, that your use is for
    Info: the sole purpose of programming logic devices manufactured by
    Info: Intel and sold by Intel or its authorized distributors.  Please
    Info: refer to the applicable agreement for further details.
    Info: Processing started: Thu Mar  5 06:54:02 2020
Info: Command: quartus_sh -t /opt/altera/quartus/common/tcl/internal/nativelink/qnativesim.tcl --gen_script --rtl_sim mp2 mp2
Info: Quartus(args): --gen_script --rtl_sim mp2 mp2
Info: Info: Start Nativelink Simulation process
Info: Info: NativeLink has detected Verilog design -- Verilog simulation models will be used
Info: Info: Starting NativeLink simulation with ModelSim-Altera software
Info: Info: Generated ModelSim-Altera script file /job/student/simulation/modelsim/mp2_run_msim_rtl_verilog.do File: /job/student/simulation/modelsim/mp2_run_msim_rtl_verilog.do Line: 0
Info: Info: NativeLink simulation flow was successful
Info: Info: For messages from NativeLink scripts, check the file /job/student/mp2_nativelink_simulation.rpt File: /job/student/mp2_nativelink_simulation.rpt Line: 0
Info (23030): Evaluation of Tcl script /opt/altera/quartus/common/tcl/internal/nativelink/qnativesim.tcl was successful
Info: Quartus Prime Shell was successful. 0 errors, 0 warnings
    Info: Peak virtual memory: 787 megabytes
    Info: Processing ended: Thu Mar  5 06:54:02 2020
    Info: Elapsed time: 00:00:00
    Info: Total CPU time (on all processors): 00:00:00
Reading pref.tcl

# 10.5b

ModelSim> transcript on
ModelSim> > > if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
ModelSim> vlib rtl_work
ModelSim> vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Modifying /opt/altera/modelsim_ase/linuxaloem/../modelsim.ini
ModelSim> 
> 
vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/array.sv 
# -- Compiling module array
# 
# Top level modules:
# 	array
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_control.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_control.sv 
# -- Compiling module cache_control
# 
# Top level modules:
# 	cache_control
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/compare.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/compare.sv 
# -- Compiling module compare
# 
# Top level modules:
# 	compare
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/data_array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/data_array.sv 
# -- Compiling module data_array
# 
# Top level modules:
# 	data_array
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/bus_adapter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/bus_adapter.sv 
# -- Compiling module bus_adapter
# 
# Top level modules:
# 	bus_adapter
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/cacheline_adaptor.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/cacheline_adaptor.sv 
# -- Compiling module cacheline_adaptor
# 
# Top level modules:
# 	cacheline_adaptor
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/mux.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/mux.sv 
# -- Compiling module twomux
# -- Compiling module fourmux
# -- Compiling module eightmux
# -- Compiling module sixmux
# 
# Top level modules:
# 	twomux
# 	fourmux
# 	eightmux
# 	sixmux
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/pc_reg.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/pc_reg.sv 
# -- Compiling module pc_register
# 
# Top level modules:
# 	pc_register
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/regfile.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/regfile.sv 
# -- Compiling module regfile
# 
# Top level modules:
# 	regfile
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/register.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/register.sv 
# -- Compiling module register
# 
# Top level modules:
# 	register
# End time: 06:54:03 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_mux_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:03 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_mux_types.sv 
# -- Compiling package pcmux
# -- Compiling package marmux
# -- Compiling package cmpmux
# -- Compiling package alumux
# -- Compiling package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_types.sv 
# -- Compiling package pcmux
# -- Compiling package marmux
# -- Compiling package cmpmux
# -- Compiling package alumux
# -- Compiling package regfilemux
# -- Compiling package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_datapath.sv 
# -- Compiling module cache_datapath
# ** Error: (vlog-13069) /job/student/hdl/cache/cache_datapath.sv(34): near "mem_address": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_writer.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_writer.sv 
# -- Compiling package cache_writer_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cache_writer
# 
# Top level modules:
# 	cache_writer
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cmp.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cmp.sv 
# -- Compiling package cmp_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cmp
# 
# Top level modules:
# 	cmp
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cpu_control.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cpu_control.sv 
# -- Compiling package cpu_control_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module control
# 
# Top level modules:
# 	control
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cpu_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cpu_datapath.sv 
# -- Compiling package cpu_datapath_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module datapath
# 
# Top level modules:
# 	datapath
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/alu.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/alu.sv 
# -- Compiling package alu_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module alu
# 
# Top level modules:
# 	alu
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/ir.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/ir.sv 
# -- Compiling package ir_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module ir
# 
# Top level modules:
# 	ir
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache.sv 
# -- Compiling module cache
# ** Error: (vlog-13069) /job/student/hdl/cache/cache.sv(12): near "mem_byte_enable": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cpu.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cpu.sv 
# -- Compiling package cpu_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cpu
# 
# Top level modules:
# 	cpu
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/mp2.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/mp2.sv 
# -- Compiling package mp2_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module mp2
# 
# Top level modules:
# 	mp2
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/top.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:54:04 on Mar 05,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/top.sv 
# -- Compiling interface top_itf
# ** Warning: ** while parsing file included at /job/student/hvl/top.sv(6)
# ** while parsing file included at hvl/cache/ag_cache_tb.sv(8)
# ** while parsing file included at hvl/cache/ag_cache_scoreboard.sv(3)
# ** at hvl/cache/ag_cache_model.sv(49): (vlog-2897) Using non-standard foreach loop variable list syntax.
# -- Compiling package top_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Importing package mp2_cpu_types
# -- Importing package ag_cache_types
# ** Warning: hvl/cache/ag_cache_model.sv(49): (vlog-2897) Using non-standard foreach loop variable list syntax.
# ** Warning: hvl/cache/ag_cache_sequencer_direct.sv(10): (vlog-2240) Treating stand-alone use of function '_build_slist' as an implicit VOID cast.
# ** Warning: hvl/cache/ag_cache_sequencer_direct.sv(13): (vlog-2250) Function "_build_slist" has no return value assignment.
# -- Compiling package mp2_cpu_types
# -- Compiling interface mp2_cpu_itf
# ** Warning: hvl/cache/ag_cache_model.sv(49): (vlog-2897) Using non-standard foreach loop variable list syntax.
# -- Compiling module riscv_formal_monitor_rv32i
# -- Compiling module riscv_formal_monitor_rv32i_rob
# -- Compiling module riscv_formal_monitor_rv32i_isa_spec
# -- Compiling module riscv_formal_monitor_rv32i_insn_add
# -- Compiling module riscv_formal_monitor_rv32i_insn_addi
# -- Compiling module riscv_formal_monitor_rv32i_insn_and
# -- Compiling module riscv_formal_monitor_rv32i_insn_andi
# -- Compiling module riscv_formal_monitor_rv32i_insn_auipc
# -- Compiling module riscv_formal_monitor_rv32i_insn_beq
# -- Compiling module riscv_formal_monitor_rv32i_insn_bge
# -- Compiling module riscv_formal_monitor_rv32i_insn_bgeu
# -- Compiling module riscv_formal_monitor_rv32i_insn_blt
# -- Compiling module riscv_formal_monitor_rv32i_insn_bltu
# -- Compiling module riscv_formal_monitor_rv32i_insn_bne
# -- Compiling module riscv_formal_monitor_rv32i_insn_jal
# -- Compiling module riscv_formal_monitor_rv32i_insn_jalr
# -- Compiling module riscv_formal_monitor_rv32i_insn_lb
# -- Compiling module riscv_formal_monitor_rv32i_insn_lbu
# -- Compiling module riscv_formal_monitor_rv32i_insn_lh
# -- Compiling module riscv_formal_monitor_rv32i_insn_lhu
# -- Compiling module riscv_formal_monitor_rv32i_insn_lui
# -- Compiling module riscv_formal_monitor_rv32i_insn_lw
# -- Compiling module riscv_formal_monitor_rv32i_insn_or
# -- Compiling module riscv_formal_monitor_rv32i_insn_ori
# -- Compiling module riscv_formal_monitor_rv32i_insn_sb
# -- Compiling module riscv_formal_monitor_rv32i_insn_sh
# -- Compiling module riscv_formal_monitor_rv32i_insn_sll
# -- Compiling module riscv_formal_monitor_rv32i_insn_slli
# -- Compiling module riscv_formal_monitor_rv32i_insn_slt
# -- Compiling module riscv_formal_monitor_rv32i_insn_slti
# -- Compiling module riscv_formal_monitor_rv32i_insn_sltiu
# -- Compiling module riscv_formal_monitor_rv32i_insn_sltu
# -- Compiling module riscv_formal_monitor_rv32i_insn_sra
# -- Compiling module riscv_formal_monitor_rv32i_insn_srai
# -- Compiling module riscv_formal_monitor_rv32i_insn_srl
# -- Compiling module riscv_formal_monitor_rv32i_insn_srli
# -- Compiling module riscv_formal_monitor_rv32i_insn_sub
# -- Compiling module riscv_formal_monitor_rv32i_insn_sw
# -- Compiling module riscv_formal_monitor_rv32i_insn_xor
# -- Compiling module riscv_formal_monitor_rv32i_insn_xori
# -- Compiling interface data_xchange_itf
# -- Compiling module cpu_tb
# -- Compiling package ag_cache_types
# -- Compiling interface ag_cache_itf
# -- Compiling module ag_cache_tb
# -- Compiling interface ag_dumb_itf
# -- Compiling module mp2_tb
# 
# Top level modules:
# 	mp2_tb
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 5
ModelSim> 
> 
vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  mp2_tb
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs=""+acc"" mp2_tb 
# Start time: 06:54:04 on Mar 05,2020
# Loading sv_std.std
# Loading work.ag_cache_types
# Loading work.mp2_cpu_types
# Loading work.regfilemux
# Loading work.alumux
# Loading work.cmpmux
# Loading work.marmux
# Loading work.pcmux
# Loading work.rv32i_types
# Loading work.top_sv_unit
# Loading work.mp2_tb
# Loading work.top_itf
# Loading work.ag_dumb_itf
# Loading work.cpu_tb
# Loading work.mp2_cpu_itf
# Loading work.data_xchange_itf
# Loading work.mp2_sv_unit
# Loading work.mp2
# Loading work.cpu_sv_unit
# Loading work.cpu
# Loading work.cpu_control_sv_unit
# Loading work.control
# Loading work.cpu_datapath_sv_unit
# Loading work.datapath
# Loading work.ir_sv_unit
# Loading work.ir
# Loading work.register
# Loading work.alu_sv_unit
# Loading work.alu
# Loading work.pc_register
# Loading work.regfile
# Loading work.cmp_sv_unit
# Loading work.cmp
# Loading work.fourmux
# ** Error: (vsim-3033) /job/student/hdl/mp2.sv(42): Instantiation of 'cache' failed. The design unit was not found.
#    Time: 0 ps  Iteration: 0  Instance: /mp2_tb/cpu_dut/dut File: /job/student/hdl/mp2.sv
#         Searched libraries:
#             /opt/altera/modelsim_ase/altera/verilog/altera
#             /opt/altera/modelsim_ase/altera/verilog/220model
#             /opt/altera/modelsim_ase/altera/verilog/sgate
#             /opt/altera/modelsim_ase/altera/verilog/altera_mf
#             /opt/altera/modelsim_ase/altera/verilog/altera_lnsim
#             /opt/altera/modelsim_ase/altera/verilog/arriaii_hssi
#             /opt/altera/modelsim_ase/altera/verilog/arriaii_pcie_hip
#             /opt/altera/modelsim_ase/altera/verilog/arriaii
#             /job/student/rtl_work
#             /job/student/rtl_work
# Loading work.cacheline_adaptor
# Loading work.riscv_formal_monitor_rv32i
# Loading work.riscv_formal_monitor_rv32i_isa_spec
# Loading work.riscv_formal_monitor_rv32i_insn_add
# Loading work.riscv_formal_monitor_rv32i_insn_addi
# Loading work.riscv_formal_monitor_rv32i_insn_and
# Loading work.riscv_formal_monitor_rv32i_insn_andi
# Loading work.riscv_formal_monitor_rv32i_insn_auipc
# Loading work.riscv_formal_monitor_rv32i_insn_beq
# Loading work.riscv_formal_monitor_rv32i_insn_bge
# Loading work.riscv_formal_monitor_rv32i_insn_bgeu
# Loading work.riscv_formal_monitor_rv32i_insn_blt
# Loading work.riscv_formal_monitor_rv32i_insn_bltu
# Loading work.riscv_formal_monitor_rv32i_insn_bne
# Loading work.riscv_formal_monitor_rv32i_insn_jal
# Loading work.riscv_formal_monitor_rv32i_insn_jalr
# Loading work.riscv_formal_monitor_rv32i_insn_lb
# Loading work.riscv_formal_monitor_rv32i_insn_lbu
# Loading work.riscv_formal_monitor_rv32i_insn_lh
# Loading work.riscv_formal_monitor_rv32i_insn_lhu
# Loading work.riscv_formal_monitor_rv32i_insn_lui
# Loading work.riscv_formal_monitor_rv32i_insn_lw
# Loading work.riscv_formal_monitor_rv32i_insn_or
# Loading work.riscv_formal_monitor_rv32i_insn_ori
# Loading work.riscv_formal_monitor_rv32i_insn_sb
# Loading work.riscv_formal_monitor_rv32i_insn_sh
# Loading work.riscv_formal_monitor_rv32i_insn_sll
# Loading work.riscv_formal_monitor_rv32i_insn_slli
# Loading work.riscv_formal_monitor_rv32i_insn_slt
# Loading work.riscv_formal_monitor_rv32i_insn_slti
# Loading work.riscv_formal_monitor_rv32i_insn_sltiu
# Loading work.riscv_formal_monitor_rv32i_insn_sltu
# Loading work.riscv_formal_monitor_rv32i_insn_sra
# Loading work.riscv_formal_monitor_rv32i_insn_srai
# Loading work.riscv_formal_monitor_rv32i_insn_srl
# Loading work.riscv_formal_monitor_rv32i_insn_srli
# Loading work.riscv_formal_monitor_rv32i_insn_sub
# Loading work.riscv_formal_monitor_rv32i_insn_sw
# Loading work.riscv_formal_monitor_rv32i_insn_xor
# Loading work.riscv_formal_monitor_rv32i_insn_xori
# Loading work.riscv_formal_monitor_rv32i_rob
# Loading work.ag_cache_tb
# Loading work.ag_cache_itf
# ** Error: (vsim-3033) hvl/cache/ag_cache_tb.sv(43): Instantiation of 'cache' failed. The design unit was not found.
#    Time: 0 ps  Iteration: 0  Instance: /mp2_tb/cache_dut File: hvl/cache/ag_cache_tb.sv
#         Searched libraries:
#             /opt/altera/modelsim_ase/altera/verilog/altera
#             /opt/altera/modelsim_ase/altera/verilog/220model
#             /opt/altera/modelsim_ase/altera/verilog/sgate
#             /opt/altera/modelsim_ase/altera/verilog/altera_mf
#             /opt/altera/modelsim_ase/altera/verilog/altera_lnsim
#             /opt/altera/modelsim_ase/altera/verilog/arriaii_hssi
#             /opt/altera/modelsim_ase/altera/verilog/arriaii_pcie_hip
#             /opt/altera/modelsim_ase/altera/verilog/arriaii
#             /job/student/rtl_work
#             /job/student/rtl_work
# Error loading design
# End time: 06:54:04 on Mar 05,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0

```

</details>


### Targeted Tests: 
<ul>
<li> <b>cache_test_clean_evict</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_cold_start_store</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_load_read_all</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_match_all_lru</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_match_single_lru</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_read</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_single_read</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_single_store</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_single_writeback</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_store_read_all</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_write</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cache_test_writeback_all</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lb_signed</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lb_signed_non_word_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lb_unsigned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lb_unsigned_non_word_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lh_signed</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lh_signed_non_word_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lh_unsigned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lh_unsigned_non_word_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>read_test</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sb</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sb_non_word_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sh</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sh_non_word_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sw_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>writeback</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
</ul>

### Longer ![Failure][failure]
You failed to pass the longer testcase.

### Timing ![Success][success]
You successfully passed timing.

---
Staff use: 5e60968e52680ce0e28c86b5

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
