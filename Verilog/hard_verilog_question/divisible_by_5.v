module div5 (
    input clk,
    input resetn,
    input din,
    output dout
);
//Write Your Code Here 
//Do not remove default Code
//next_value = current_value*2+din
//state transition = new_remainder=(old_remainder*2+din)%5
reg [2:0] state;
reg [2:0] next_state;

parameter S0 = 3'd0;
parameter S1 = 3'd1;
parameter S2 = 3'd2;
parameter S3 = 3'd3;
parameter S4 = 3'd4;

always @(posedge clk or negedge resetn) begin
    if (!resetn)
        state <= S0;
    else
        state <= next_state;
end

always @(*) begin
    case (state)
        S0: begin
            if (din)
                next_state = S1;
            else
                next_state = S0;
        end

        S1: begin
            if (din)
                next_state = S3;
            else
                next_state = S2;
        end

        S2: begin
            if (din)
                next_state = S0;
            else
                next_state = S4;
        end

        S3: begin
            if (din)
                next_state = S2;
            else
                next_state = S1;
        end

        S4: begin
            if (din)
                next_state = S4;
            else
                next_state = S3;
        end

        default: begin
            next_state = S0; //bcz s0 represent remainder 0
        end
    endcase
end

assign dout = (state == S0);

endmodule
