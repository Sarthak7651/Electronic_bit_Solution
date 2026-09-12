module counter_4bit (
  input  wire       clk,
  input  wire       rst,
  output reg  [3:0] count
);

always @(posedge clk or posedge rst)
begin
  if(rst)
  count <= 4'b0000;
  else if ( count == 4'b1111)
  count <= 4'b0;
  else count <= count+1'b1;
end
endmodule
