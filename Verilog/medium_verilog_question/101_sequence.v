module seq_det_101 (
  input  wire clk,
  input  wire reset,
  input  wire din,
  output wire match
);
// Write Your Code Here

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] present_state,next_state;

always @(posedge clk or posedge reset) 
begin
  if(reset) begin
  present_state <= s0;
  end  else begin
    present_state <= next_state;
  end
end

always @(*) begin
  case (present_state)
        s0 : next_state=din?s1:s0;
        s1 : next_state=din?s1:s2;
        s2 : next_state=din?s3:s0;
        s3 : next_state=din?s1:s2;
        default : next_state = s0;
  endcase
end

assign match = (present_state == s3);
endmodule
