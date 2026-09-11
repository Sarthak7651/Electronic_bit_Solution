`default_nettype none

module full_adder #(
    parameter WIDTH = 1
)(
    input  wire               clk,
    input  wire               rst,
    input  wire [WIDTH-1:0]   a,
    input  wire [WIDTH-1:0]   b,
    input  wire               cin,
    output reg  [WIDTH-1:0]   sum,
    output reg                cout
);

    // Your logic here

    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            sum <= {WIDTH{1'b0}};
            cout <= 1'b0;
        end else begin
            sum=a^b^cin;
            cout=a&b|b&cin|cin&a;
          //{cout,sum}=a+b+cin;
        end
    end

endmodule
