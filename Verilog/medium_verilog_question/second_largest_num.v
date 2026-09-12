module second_largest (clk, resetn, DIN, DOUT);
    input clk;
    input resetn;
    input  [7:0] DIN;
    output [7:0] DOUT;

// Write Your Code Here
// Do not remove default code

reg [7:0] max1;
reg [7:0] max2;

always @(posedge clk or negedge resetn) begin
    if(!resetn)
    begin
        max1 <= 8'h00;
        max2 <= 8'h00;
    end else begin
        if(DIN>max1) begin
            max2 <= max1;
            max1 <= DIN;
        end
        else if (DIN>max2) begin
            max2 <= DIN;
        end
    end
end
assign DOUT = max2;
endmodule
