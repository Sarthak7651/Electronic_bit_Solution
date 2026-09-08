module odd_counter (
    input  wire       clk,
    input  wire       reset,
    output reg [3:0]  cnt_o
);

    always @(posedge clk) begin
        if (reset)
            cnt_o <= 4'd1;
            
        else if(cnt_o == 4'd15) cnt_o <= 4'd3;
        else cnt_o <= cnt_o + 4'd2;
    end

endmodule
