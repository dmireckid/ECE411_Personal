# AG Report Generated 2020-02-04 16:13
This is a report about mp1cp1 generated for mirecki2 at 2020-02-04 16:13. The autograder used commit ``54821da530cd`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
 - Targeted: 0/18 (0.0%)
 - Timing: NO
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
    Info: Processing started: Tue Feb  4 22:13:35 2020
Info: Command: quartus_map mp1 -c mp1
Info (20030): Parallel compilation is enabled and will use 4 of the 4 processors detected
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cmp.sv
    Info (12023): Found entity 1: cmp File: /job/student/hdl/cmp.sv Line: 3
Error (10170): Verilog HDL syntax error at control.sv(94) near text: "reg";  expecting an identifier ("reg" is a reserved keyword ). Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 94
Error (10170): Verilog HDL syntax error at control.sv(307) near text: ":". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 307
Error (10170): Verilog HDL syntax error at control.sv(346) near text: "endcase";  expecting ";". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 346
Error (10170): Verilog HDL syntax error at control.sv(369) near text: ":";  expecting "<=", or "=", or "+=", or "-=", or "*=", or "/=", or "%=", or "&=", or "|=", or "^=", or "<<=", or ">>=", or "<<<=", or ">>>=", or "++", or "--". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 369
Error (10170): Verilog HDL syntax error at control.sv(373) near text: ";". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 373
Error (10170): Verilog HDL syntax error at control.sv(377) near text: "end";  expecting "<=", or "=", or "+=", or "-=", or "*=", or "/=", or "%=", or "&=", or "|=", or "^=", or "<<=", or ">>=", or "<<<=", or ">>>=", or "++", or "--". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 377
Error (10170): Verilog HDL syntax error at control.sv(394) near text: ":". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 394
Error (10170): Verilog HDL syntax error at control.sv(402) near text: "always_ff";  expecting "endcase". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 402
Error (10170): Verilog HDL syntax error at control.sv(405) near text: ";";  expecting ":", or ",". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/control.sv Line: 405
Info (12021): Found 0 design units, including 0 entities, in source file hdl/control.sv
Info (12021): Found 1 design units, including 1 entities, in source file hdl/datapath.sv
    Info (12023): Found entity 1: datapath File: /job/student/hdl/datapath.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/mp1.sv
    Info (12023): Found entity 1: mp1 File: /job/student/hdl/mp1.sv Line: 3
Info (12021): Found 2 design units, including 2 entities, in source file hdl/mux.sv
    Info (12023): Found entity 1: twomux File: /job/student/hdl/mux.sv Line: 1
    Info (12023): Found entity 2: fourmux File: /job/student/hdl/mux.sv Line: 15
Info (12021): Found 1 design units, including 1 entities, in source file hdl/alu.sv
    Info (12023): Found entity 1: alu File: /job/student/hdl/alu.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/ir.sv
    Info (12023): Found entity 1: ir File: /job/student/hdl/ir.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pc_reg.sv
    Info (12023): Found entity 1: pc_register File: /job/student/hdl/pc_reg.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/regfile.sv
    Info (12023): Found entity 1: regfile File: /job/student/hdl/regfile.sv Line: 2
Info (12021): Found 1 design units, including 1 entities, in source file hdl/register.sv
    Info (12023): Found entity 1: register File: /job/student/hdl/register.sv Line: 1
Info (12021): Found 5 design units, including 0 entities, in source file hdl/rv32i_mux_types.sv
    Info (12022): Found design unit 1: pcmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 1
    Info (12022): Found design unit 2: marmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 9
    Info (12022): Found design unit 3: cmpmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 16
    Info (12022): Found design unit 4: alumux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 23
    Info (12022): Found design unit 5: regfilemux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 39
Info (12021): Found 1 design units, including 0 entities, in source file hdl/rv32i_types.sv
    Info (12022): Found design unit 1: rv32i_types (SystemVerilog) File: /job/student/hdl/rv32i_types.sv Line: 1
Info (144001): Generated suppressed messages file /job/student/output_files/mp1.map.smsg
Error: Quartus Prime Analysis & Synthesis was unsuccessful. 9 errors, 0 warnings
    Error: Peak virtual memory: 986 megabytes
    Error: Processing ended: Tue Feb  4 22:13:49 2020
    Error: Elapsed time: 00:00:14
    Error: Total CPU time (on all processors): 00:00:36

```

</details>


### Targeted Tests: 
<ul>
<li> <b>and</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>beq</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>bge</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>bne</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>lw_aligned</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>or</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>ori</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sll</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>slli</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>slti</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>sltiu</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srai</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srai_neg</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srl</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>srli</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
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
<li> <b>xor</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>xori</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
</ul>

### Timing ![Failure][failure]
You failed to pass timing.Failed to generate report file

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 