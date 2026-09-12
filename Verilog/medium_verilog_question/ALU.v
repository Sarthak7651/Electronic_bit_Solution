module alu(input[15:0] A,
input[15:0] B,
input[2:0] SEL,
output reg [15:0] OUT);

// Write your code here
// Do not delete default code

always @(*) begin
    case(SEL)
    3'b000 : OUT=16'h0000;
    3'b001 : OUT=A&B;
    3'b010 : OUT=A|B;
    3'b011 : OUT=A^B;
    3'b100 : OUT=~A;
    3'b101 : OUT=A-B;
    3'b110 : OUT=A+B;
    3'b111 : OUT=16'hFFFF;
    default : OUT=16'h0000;
    endcase
end

endmodule
