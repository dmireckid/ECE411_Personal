`ifndef testbench
`define testbench

import fifo_types::*;

module testbench(fifo_itf itf);

fifo_synch_1r1w dut (
    .clk_i     ( itf.clk     ),
    .reset_n_i ( itf.reset_n ),

    // valid-ready enqueue protocol
    .data_i    ( itf.data_i  ),
    .valid_i   ( itf.valid_i ),
    .ready_o   ( itf.rdy     ),

    // valid-yumi deqeueue protocol
    .valid_o   ( itf.valid_o ),
    .data_o    ( itf.data_o  ),
    .yumi_i    ( itf.yumi    )
);

// Clock Synchronizer for Student Use
default clocking tb_clk @(negedge itf.clk); endclocking

task reset();
    itf.reset_n <= 1'b0;
    ##(10);
    itf.reset_n <= 1'b1;
    ##(1);
endtask : reset

function automatic void report_error(error_e err); 
    itf.tb_report_dut_error(err);
endfunction : report_error

// DO NOT MODIFY CODE ABOVE THIS LINE

always @(tb_clk iff itf.reset_n)
    @(posedge itf.clk)
    assert(itf.rdy)
        else begin
            itf.tb_report_dut_error(RESET_DOES_NOT_CAUSE_READY_O);
        end

always @(tb_clk iff itf.yumi)
    assert(itf.valid_o)
        else begin
            itf.tb_report_dut_error(INCORRECT_DATA_O_ON_YUMI_I);
        end

initial begin
    reset();
    /************************ Your Code Here ***********************/
    // Feel free to make helper tasks / functions, initial / always blocks, etc.
    $display("Running- enqueuing");
    @(tb_clk iff dut.ready_o);
    itf.valid_i <= 1'b1;
    for(int i=0; i<256; i=i+1) begin
        itf.data_i <= i;
        @(tb_clk);
    end
    itf.valid_i <= 1'b0;
    $display("Dequeuing");
    ##15;
    itf.yumi <= 1'b1;
    @(tb_clk iff !(dut.valid_o));
    itf.yumi <= 1'b0;
    reset();

    $display("Simultaneous En+De");
    for(int j=255; j>0; j=j-1) begin
        @(tb_clk iff dut.ready_o);
        itf.valid_i <= 1'b1;
        for(int k=0; k<j; k=k+1) begin
            itf.data_i <= k;
            //$display("k= %d", k);
            @(tb_clk);
        end
        itf.valid_i <= 1'b0;
        ##10;
        itf.valid_i <= 1'b1;
        itf.yumi <= 1'b1;
        @(tb_clk);
        itf.valid_i <= 1'b0;
        itf.yumi <= 1'b0;
        reset();
    end


    /***************************************************************/
    // Make sure your test bench exits by calling itf.finish();
    itf.finish();
    $error("TB: Illegal Exit ocurred");
end

endmodule : testbench
`endif

