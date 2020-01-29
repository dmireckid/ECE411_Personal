import cam_types::*;

module testbench(cam_itf itf);

cam dut (
    .clk_i     ( itf.clk     ),
    .reset_n_i ( itf.reset_n ),
    .rw_n_i    ( itf.rw_n    ),
    .valid_i   ( itf.valid_i ),
    .key_i     ( itf.key     ),
    .val_i     ( itf.val_i   ),
    .val_o     ( itf.val_o   ),
    .valid_o   ( itf.valid_o )
);

default clocking tb_clk @(negedge itf.clk); endclocking

task reset();
    itf.reset_n <= 1'b0;
    repeat (5) @(tb_clk);
    itf.reset_n <= 1'b1;
    repeat (5) @(tb_clk);
endtask

// DO NOT MODIFY CODE ABOVE THIS LINE

task write(input key_t key, input val_t val);
    itf.rw_n <= 1'b0;
    itf.key <= key;
    itf.val_i <= val;
    @(tb_clk);
    itf.valid_i <= 1'b1;
endtask

task read(input key_t key);
    itf.rw_n <= 1'b1;
    itf.key <= key;
    @(tb_clk);
    itf.valid_i <= 1'b1;
endtask

always @(tb_clk iff (itf.valid_i && itf.rw_n))
    assert(itf.valid_o)
        else begin
            itf.tb_report_dut_error(READ_ERROR);
        end

initial begin
    $display("Starting CAM Tests");

    reset();
    /************************** Your Code Here ****************************/
    // Feel free to make helper tasks / functions, initial / always blocks, etc.
    // Consider using the task skeltons above
    // To report errors, call itf.tb_report_dut_error in cam/include/cam_itf.sv
    for(int i=0; i<8; i=i+1) begin
        ##3;
        write(i, $urandom());
    end
    ##1;
    for(int j=8; j<16; j=j+1) begin
        ##3;
        write(j, $urandom());
    end
    ##1;

    for(int k=8; k<16; k=k+1) begin
        ##3;
        read(k);
    end
    ##1;

    write(21, $urandom());
    write(21, $urandom());

    ##3;

    write(22, $urandom());
    read(22);

    /**********************************************************************/

    itf.finish();
end

endmodule : testbench
