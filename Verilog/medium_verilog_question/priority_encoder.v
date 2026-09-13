module priority_encoder_8 (
  input  wire [7:0] req,
  output reg  [2:0] idx,
  output wire     valid
);
 
  // TODO: compute valid (hint: reduction OR of req)
 
  // TODO: implement combinational priority chain (always @(*))
  //   check req[7] down to req[0], highest set bit wins
  //   don't forget the final else for the all-zero case!
  
 assign valid = |req;

  always @(*) begin
    if (req[7]) idx = 3'd7;
    else if (req[6]) idx = 3'd6;
    else if (req[5]) idx = 3'd5;
    else if (req[4]) idx = 3'd4;
    else if (req[3]) idx = 3'd3;
    else if (req[2]) idx = 3'd2;
    else if (req[1]) idx = 3'd1;
    else if (req[0]) idx = 3'd0;
    else idx = 3'd0;
  end


endmodule
