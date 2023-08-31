module behav_and_gate_testbench();
    reg A, B;
    wire S;

    behav_and_gate dut(A, B, S);

    initial
        begin
            $dumpfile("dump.vcd");
            $dumpvars(1);
          
            A = 1'b1;    B = 1'b1; #1;
          	$display(S);

            A = 0'b0;    B = 0'b0; #1;
          	$display(A);

    		A = 1'b1;    B = 0'b0; #1;
          	$display(S);
	          
    		A = 0'b0;    B = 1'b1; #1;
          	$display(S);
        end
endmodule