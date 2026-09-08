module mux (
    input a,
    input b,
    input sel,
    output out
);
    // Write Your Code Here
    // Do not remove default code
    assign out = sel ? b:a;
endmodule
