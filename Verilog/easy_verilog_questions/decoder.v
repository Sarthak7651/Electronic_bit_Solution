// Gate Level
module decoder_gate_level(input a, input b, output wire ab, adashb, abdash, adashbdash);
    wire an, bn;
    not n1(an, a);
    not n2(bn, b);
    and a1(ab, a, b);
    and a2(adashb, an, b);
    and a3(abdash, a, bn);
    and a4(adashbdash, an, bn);
endmodule

// Data Flow
module decoder_data_flow_level(input a, input b, output wire ab, adashb, abdash, adashbdash);
    assign ab = a & b;
    assign adashb = ~a & b;
    assign abdash = a & ~b;
    assign adashbdash = ~a & ~b;
endmodule

// Behavioral
module decoder_behavioral(input a, input b, output reg ab, adashb, abdash, adashbdash);
    always @(*) begin
        {ab, adashb, abdash, adashbdash} = 4'b0000;
        case ({a, b})
            2'b11: ab = 1'b1;
            2'b01: adashb = 1'b1;
            2'b10: abdash = 1'b1;
            2'b00: adashbdash = 1'b1;
        endcase
    end
endmodule
