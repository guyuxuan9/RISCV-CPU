module logic#(
    input logic     Branch,
    input logic       Zero,
    input logic       Jump,
    output logic     PCSrc,
);

always_comb begin
    result = Branch & Zero;
    PCSrc = Jump | result;
end

endmodule
