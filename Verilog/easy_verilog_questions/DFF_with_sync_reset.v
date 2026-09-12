module dff_sync_reset (
  input  wire clk,
  input  wire rst,
  input  wire d,
  output reg  q
);

  // TODO: implement sequential block
  // Hint: sensitivity list should only have posedge clk
  always @(posedge clk) begin
    // TODO: check rst and assign q
    if(rst) q <= 1'b0;
    else q <= d;
  end

endmodule
