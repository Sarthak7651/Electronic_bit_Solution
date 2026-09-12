module divide_by_5(
    input input_clk, 
    input rst, 
    output wire output_clk
);
    reg [2:0] pos_cnt, neg_cnt;

    // Positive edge counter
    always @(posedge input_clk or negedge rst) begin
        if (!rst) pos_cnt <= 3'b0;
        else pos_cnt <= (pos_cnt == 3'd4) ? 3'b0 : pos_cnt + 1;
    end

    // Negative edge counter
    always @(negedge input_clk or negedge rst) begin
        if (!rst) neg_cnt <= 3'b0;
        else neg_cnt <= (neg_cnt == 3'd4) ? 3'b0 : neg_cnt + 1;
    end

    // Generate 50% duty cycle by ORing two clocks with 40% duty cycle
    assign output_clk = ((pos_cnt > 1) | (neg_cnt > 1));

endmodule
