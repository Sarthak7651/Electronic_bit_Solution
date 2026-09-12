module top_module (
    input  [2:0] in,
    output reg [1:0] pos
);
    // Write your code here

    always @(*) begin
    if(in[2])
    pos = 2'b10;
    else if (in[1])
    pos = 2'b01;
    else if (in[0])
    pos = 2'b00;
    else pos = 2'b00;
    end

   /* always @(*) begin
    case (din)
        3'b000: dout = 2'b00;
        3'b001: dout = 2'b00;
        3'b010: dout = 2'b01;
        3'b011: dout = 2'b01;
        3'b100: dout = 2'b10;
        3'b101: dout = 2'b10;
        3'b110: dout = 2'b10;
        3'b111: dout = 2'b10;
        default: dout = 2'b00;
    endcase
end */
endmodule
