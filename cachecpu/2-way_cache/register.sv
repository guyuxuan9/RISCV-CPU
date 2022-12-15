module register#(
    parameter DATA_WIDTH = 32
)(
    input logic                    clk,
    input logic [DATA_WIDTH-1:0]   in,
    output logic [DATA_WIDTH-1:0]  out
);

// synchronous
always_ff @(negedge clk) begin
    out <= in;
end

endmodule
