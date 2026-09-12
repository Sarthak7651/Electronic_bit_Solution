`default_nettype none

module nor_gate(input a, input b, output wire out);
    assign out = ~(a | b);
endmodule

module nor_to_not_gate(input a, output wire out);
    nor_gate g1(a, a, out);
endmodule

module nor_to_or_gate(input a, input b, output wire out);
    wire w1;
    nor_gate g1(a, b, w1);
    nor_gate g2(w1, w1, out);
endmodule

module nor_to_and_gate(input a, input b, output wire out);
    wire na, nb;
    nor_gate g1(a, a, na);
    nor_gate g2(b, b, nb);
    nor_gate g3(na, nb, out);
endmodule

module nor_to_nand_gate(input a, input b, output wire out);
    wire and_out;
    nor_to_and_gate g1(a, b, and_out);
    nor_gate g2(and_out, and_out, out);
endmodule

module nand_to_xor_gate(input a, input b, output wire out);
    wire na, nb, t1, t2;

    // Invert inputs
    nor_gate g1(a, a, na);
    nor_gate g2(b, b, nb);

    // (a AND ~b)
    nor_gate g3(na, b, t1);

    // (~a AND b)
    nor_gate g4(a, nb, t2);

    // XOR = OR(t1, t2)
    wire w3;
    nor_gate g5(t1, t2, w3);
    nor_gate g6(w3, w3, out);
endmodule
