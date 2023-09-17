// Code your testbench here
// or browse Examples
module full_adder_eight_bit_testbench();
  reg [7:0]a;
  reg [7:0]b;
  reg cin;
  wire [7:0]sum;
  wire cout;
  
  full_adder_eight_bit dut(a[7:0], b[7:0], cin, sum[7:0], cout);
  	initial
      begin
        $dumpfile("dump.vcd");
        $dumpvars(1); 
        a=00000001; b=00000001; cin=0; #1; 
        $display(sum);
        $display(cout);
        a=00000001; b=00000001; cin=1; #1;
        $display(sum);
        $display(cout);
        a=00000010; b=00000011; cin=0; #1;
        $display(sum);
        $display(cout);
        a=10000001; b=10000001; cin=0; #1;
        $display(sum);
        $display(cout);
        a=00011001; b=00110001; cin=0; #1;
        $display(sum);
        $display(cout);
        a=00000011; b=00000011; cin=1; #1;
        $display(sum);
        $display(cout);
        a=11111111; b=00000001; cin=0; #1;
        $display(sum);
        $display(cout);
        a=11111111; b=00000000; cin=1; #1;
        $display(sum);
        $display(cout);
        a=11111111; b=11111111; cin=0; #1;
        $display(sum);
        $display(cout);
      end
endmodule