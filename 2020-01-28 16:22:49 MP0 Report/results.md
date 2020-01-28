# AG Report Generated 2020-01-28 16:22
This is a report about mp0 generated for mirecki2 at 2020-01-28 16:22. The autograder used commit ``087572af9f18`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### multiplier Results:
 - Compilation: Yes
 - Coverages: Passed 65539 of 65540
 - Errors: 0 reporting errors


### multiplier Results - 
<ul>
<li><b>start in SHIFT cover:</b> Passed 1 of 1</li>
<li><b>multiply operand covers:</b> Passed 65536 of 65536</li>
<li><b>start in ADD cover:</b> Passed 1 of 1</li>
<li><b>reset in SHIFT cover:</b> Passed 0 of 1</li>
<li><b>reset in ADD cover:</b> Passed 1 of 1</li>
<li><b>False Negative BAD_PRODUCT Errors:</b> 0</li>
<li><b>False Positive NOT_READY Errors:</b> 0</li>
<li><b>False Negative NOT_READY Errors:</b> 0</li>
<li><b>False Positive BAD_PRODUCT Errors:</b> 0</li>
</ul>

### fifo Results:
 - Compilation: Yes
 - Coverages: Passed 357 of 767
 - Errors: 0 reporting errors


### fifo Results - 
<ul>
<li><b>enqueue covers:</b> Passed 256 of 256</li>
<li><b>dequeue covers:</b> Passed 101 of 256</li>
<li><b>both covers:</b> Passed 0 of 255</li>
<li><b>False Positive Data Errors:</b> 0</li>
<li><b>False Negative Data Errors:</b> 0</li>
<li><b>False Positive Reset Errors:</b> 0</li>
<li><b>False Negative Reset Errors:</b> 0</li>
</ul>

### cam Results:
 - Compilation: Yes
 - Coverages: Passed 0 of 18
 - Errors: 0 reporting errors


### cam Results - 
<ul>
<li><b>Write-Read to same Key in Consecutive Cycles Cover:</b> Passed 0 of 1</li>
<li><b>evict covers:</b> Passed 0 of 8</li>
<li><b>Write-Write to same Key in Consecutive Cycles Cover:</b> Passed 0 of 1</li>
<li><b>hits covers:</b> Passed 0 of 8</li>
<li><b>False Negative Read Errors:</b> 0</li>
<li><b>False Positive Read Errors:</b> 0</li>
</ul>

### cacheline_adaptor Results:
 - Compilation: Yes
 - Errors Reported: Yes --- You have more work to do!

### cacheline_adaptor Compilation - ![Success][success]
You succesfully compiled. Your report is below.
<details>
<summary>Compilation Report</summary>

```
Reading pref.tcl

# 10.5b

# do /job/student/cacheline_adaptor/staff_files/staff_run.do
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Modifying /opt/altera/modelsim_ase/linuxaloem/../modelsim.ini
# 
# vlog -sv -work work  {./hdl/cacheline_adaptor.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 22:22:46 on Jan 28,2020
# vlog -sv -work work ./hdl/cacheline_adaptor.sv 
# -- Compiling module cacheline_adaptor
# 
# Top level modules:
# 	cacheline_adaptor
# End time: 22:22:46 on Jan 28,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# vlog -sv -work work  {./hvl/testbench.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 22:22:46 on Jan 28,2020
# vlog -sv -work work ./hvl/testbench.sv 
# -- Compiling module cacheline_adaptor
# -- Compiling module testbench
# 
# Top level modules:
# 	testbench
# End time: 22:22:46 on Jan 28,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
# 
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L stratixv_ver -L stratixv_hssi_ver -L stratixv_pcie_hip_ver -L rtl_work -L work -voptargs=""+acc"" testbench 
# Start time: 22:22:46 on Jan 28,2020
# Loading sv_std.std
# Loading work.testbench
# Loading work.cacheline_adaptor
# 
# run -all
# Starting Read Tests
# ** Error: @499995 TB: timeout
#    Time: 499995 ps  Scope: testbench.timeout File: ./hvl/testbench.sv Line: 158
# ** Note: $finish    : ./hvl/testbench.sv(159)
#    Time: 499995 ps  Iteration: 2  Instance: /testbench
# End time: 22:22:46 on Jan 28,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0
```

</details>

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
