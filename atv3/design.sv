// Code your design here
module full_adder_one_bit (A, B, CIN, SUM, COUT);
  input A, B, CIN;
  output SUM, COUT;
  
  assign SUM = CIN^(A^B);
  assign COUT = A & B + B & CIN + A & CIN;
endmodule
    
module full_adder_eight_bit (A, B, CIN, SUM, COUT);
  input [7:0]A;
  input [7:0]B;
  input CIN;
  output [7:0]SUM;
  output COUT;
  wire [6:0]C;
  
  full_adder_one_bit x1(A[0], B[0], CIN, SUM[0], C[0]);
  full_adder_one_bit x2(A[1], B[1], C[0], SUM[1], C[1]);
  full_adder_one_bit x3(A[2], B[2], C[1], SUM[2], C[2]);
  full_adder_one_bit x4(A[3], B[3], C[2], SUM[3], C[3]);
  full_adder_one_bit x5(A[4], B[4], C[3], SUM[4], C[4]);
  full_adder_one_bit x6(A[5], B[5], C[4], SUM[5], C[5]);
  full_adder_one_bit x7(A[6], B[6], C[5], SUM[6], C[6]);
  full_adder_one_bit x8(A[7], B[7], C[6], SUM[7], COUT);
endmodule