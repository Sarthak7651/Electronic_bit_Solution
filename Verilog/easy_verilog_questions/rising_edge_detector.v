module rising_edge_detector (
  input  wire clk,
  input  wire rst,
  input  wire in,
  output wire pulse
);

reg prev;
always @(posedge clk or posedge rst)
begin
  if(rst)
  prev <= 0;
  else prev <= in;
end

assign pulse = in & ~prev;


endmodule
