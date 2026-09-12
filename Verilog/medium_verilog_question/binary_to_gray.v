module binary_to_gray #(
  parameter WIDTH = 4
)(
     // Port Directions
    input  [WIDTH-1:0] bin_in,
    output [WIDTH-1:0] gray_out
);

// Write Your Code Here
// Do not remove default code

/*
assign gray_out[3]=bin_in[3];
assign gray_out[2]=bin_in[3]^bin_in[2];
assign gray_out[1]=bin_in[2]^bin_in[1];
assign gray_out[0]=bin_in[1]^bin_in[0];
*/

assign gray_out = bin_in ^ (bin_in >> 1);

endmodule
