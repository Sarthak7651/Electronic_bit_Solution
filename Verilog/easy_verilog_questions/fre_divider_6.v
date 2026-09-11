module divide_by_6(
    input input_clk, 
    input rst, 
    output reg output_clk);
//Do not remove Default Code
//Write Your Code Here
parameter div = 6;
reg [2:0] cnt;

always @(posedge input_clk or negedge rst)
begin
    if(!rst) begin
        cnt <= 3'b0;
        output_clk <= 1'b0;
    end else begin
        if(cnt == (div/2)-1) begin
            output_clk <= ~output_clk;
            cnt <= 0;
        end
        else cnt <= cnt+1;
    end
end

endmodule
