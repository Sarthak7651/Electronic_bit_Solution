module neg_edge_det ( 
    input sig,   // Input signal for which negative edge has to be detected
    input clk,   // Input signal for clock
    input rstn,  // Input signal for reset
    output ne    // Output signal that gives a pulse when a negative edge occurs
);

// Write Your Code Here
// Do not remove default code

reg prev;//previous value
always @(posedge clk or negedge rstn)
begin
    if(!rstn)
    prev <= 1'b0;
    else prev <= sig;
end

assign ne = ~sig & prev; 

endmodule
