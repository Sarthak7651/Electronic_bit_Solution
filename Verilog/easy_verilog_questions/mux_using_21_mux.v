`default_nettype none

// Given 2:1 MUX (DO NOT MODIFY)
module mux_2to1(
    input  wire i0,
    input  wire i1,
    input  wire sel,
    output wire out
);
    assign out = sel ? i1 : i0;
endmodule


// Build 4:1 MUX using above module
module mux_4_to_1(
    input  wire i0,
    input  wire i1,
    input  wire i2,
    input  wire i3,
    input  wire [1:0] sel,
    output wire out
);

    // Write your code here
    wire w1,w2;
    mux_2to1 m1 (i0,i1,sel[0],w1);
    mux_2to1 m2 (i2,i3,sel[0],w2);
    mux_2to1 m3 (w1,w2,sel[1],out);

endmodule
