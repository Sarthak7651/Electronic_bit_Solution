module divide_by_3(
    input input_clk, 
    input rst, 
    output wire output_clk);
//Do not remove Default Code
//Write Your Code Here
reg [1:0] pos_cnt,neg_cnt;

//positive edge counter (0 to 2)
always @(posedge input_clk or negedge rst) begin
    if(!rst) pos_cnt <= 2'b0;
    else pos_cnt <= (pos_cnt == 2) ? 2'b0 : pos_cnt+1;
end

// Negattive edge counter (0 to 2)
always @(negedge input_clk or negedge rst) begin
    if(!rst) neg_cnt <= 2'b0;
    else neg_cnt <= (neg_cnt == 2) ? 2'b0 : neg_cnt+1;
end

//oring to clk to get 50% duty cycle
assign output_clk = (pos_cnt[0] | neg_cnt[0]);

endmodule
