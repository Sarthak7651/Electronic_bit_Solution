module divide_by_2(
    input clock_input,
    input rst,
    output reg clock_output);
//Do not remove default code
//Write Your Code Here
parameter clk_div=2;
reg [2:0] cnt;
always @(posedge clock_input or negedge rst)
begin
    if(!rst) begin
    clock_output <= 1'b0;
    cnt <= 3'b0;
    end else begin
    if (cnt == (clk_div/2)-1) begin
        clock_output <= ~clock_output;
        cnt <= 0;
    end
    else cnt <= cnt+1;
    end
end

endmodule
