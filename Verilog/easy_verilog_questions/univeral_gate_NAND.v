module nand_gate(input a, input b, output wire out);
    assign out = ~(a & b);
endmodule


module nand_to_not_gate(input a, output wire out);
    // NOT using NAND
    nand_gate X1 (.a(a), .b(a), .out(out));
endmodule


module nand_to_and_gate(input a, input b, output wire out);
    // AND = NAND followed by NOT
    wire w1;

    nand_gate X1 (.a(a),  .b(b),  .out(w1));
    nand_gate X2 (.a(w1), .b(w1), .out(out));
endmodule


module nand_to_or_gate(input a, input b, output wire out);
    // OR using De Morgan's law
    wire w1, w2;

    nand_gate X1 (.a(a), .b(a), .out(w1));
    nand_gate X2 (.a(b), .b(b), .out(w2));
    nand_gate X3 (.a(w1), .b(w2), .out(out));
endmodule


module nand_to_nor_gate(input a, input b, output wire out);
    // NOR = OR followed by NOT
    wire w1, w2, w3;

    nand_gate X1 (.a(a),  .b(a),  .out(w1));
    nand_gate X2 (.a(b),  .b(b),  .out(w2));
    nand_gate X3 (.a(w1), .b(w2), .out(w3));
    nand_gate X4 (.a(w3), .b(w3), .out(out));
endmodule


module nand_to_xor_gate(input a, input b, output wire out);
    wire w1, w2, w3;

    nand_gate X1 (.a(a),  .b(b),  .out(w1));
    nand_gate X2 (.a(a),  .b(w1), .out(w2));
    nand_gate X3 (.a(b),  .b(w1), .out(w3));
    nand_gate X4 (.a(w2), .b(w3), .out(out));
endmodule
