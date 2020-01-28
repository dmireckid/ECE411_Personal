import mult_types::*;

`ifndef testbench
`define testbench
module testbench(multiplier_itf.testbench itf);

add_shift_multiplier dut (
    .clk_i          ( itf.clk          ),
    .reset_n_i      ( itf.reset_n      ),
    .multiplicand_i ( itf.multiplicand ),
    .multiplier_i   ( itf.multiplier   ),
    .start_i        ( itf.start        ),
    .ready_o        ( itf.rdy          ),
    .product_o      ( itf.product      ),
    .done_o         ( itf.done         )
);

assign itf.mult_op = dut.ms.op;
default clocking tb_clk @(negedge itf.clk); endclocking

// DO NOT MODIFY CODE ABOVE THIS LINE

/* Uncomment to "monitor" changes to adder operational state over time */
//initial $monitor("dut-op: time: %0t op: %s", $time, dut.ms.op.name);


// Resets the multiplier
task reset();
    itf.reset_n <= 1'b0;
    ##5;
    itf.reset_n <= 1'b1;
    ##1;
endtask : reset

task starter();
    itf.start <= 1'b1;
    ##5;
    itf.start <= 1'b0;
    ##1;
endtask : starter

// error_e defined in package mult_types in file ../include/types.sv
// Asynchronously reports error in DUT to grading harness
function void report_error(error_e error);
    itf.tb_report_dut_error(error);
endfunction : report_error

always @(tb_clk iff (dut.ms.op==3'b011)) begin
    assert (dut.product_o == dut.multiplier_i*dut.multiplicand_i)
        else begin
            $error ("%0d: %0t: BAD_PRODUCT error detected", `__LINE__, $time);
            report_error (BAD_PRODUCT);
        end
    assert (dut.ready_o)
        else begin
            $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
            report_error (NOT_READY);
        end
end

always @(tb_clk iff (dut.reset_n_i==1'b0)) begin
    assert (dut.ready_o)
        else begin
            $error ("%0d: %0t: NOT_READY error detected", `__LINE__, $time);
            report_error (NOT_READY);
        end
end

initial itf.reset_n = 1'b0;
initial itf.start = 1'b0;
initial begin
    reset();
    /********************** Your Code Here *****************************/
    for(int i=0; i<256; i=i+1) begin
        for(int j=0; j<256; j=j+1) begin
            reset();
            ##5;
            itf.multiplicand = i;
            itf.multiplier = j;
            starter();
            @(tb_clk iff dut.ready_o);
            //dut.reset_n_i <= 1'b0;
        end
     end
     reset();
     ##5;
     itf.multiplicand <= $urandom();
     itf.multiplier <= $urandom();
     starter();
     @(tb_clk iff (dut.ms.op==3'b0 || dut.ms.op==3'b011));
     starter();
     @(tb_clk iff dut.ready_o);
     reset();
     ##(5);
     itf.multiplicand <= $urandom();
     itf.multiplier <= $urandom();
     starter();
     @(tb_clk iff (dut.ms.op==3'b101 || dut.ms.op==3'b110));
     reset();

    /*******************************************************************/
    itf.finish(); // Use this finish task in order to let grading harness
                  // complete in process and/or scheduled operations
    $error("Improper Simulation Exit");
end


endmodule : testbench
`endif
