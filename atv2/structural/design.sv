module struct_and_gate (A, B, S);
    input A, B;
    output S;

    and U1 (S, A, B);
endmodule