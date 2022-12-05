module topMW#(
    parameter DATA_WIDTH = 32
)(
    input logic clk,
    input logic [DATA_WIDTH-1:0]     ALUResultM,
    input logic [DATA_WIDTH-1:0]     ReadDataM,
    // RdE
    input logic [DATA_WIDTH-1:0]     PCPlus4M,

    output logic [DATA_WIDTH-1:0]    ALUResultW,
    output logic [DATA_WIDTH-1:0]    ReadDataW,
    // RdM
    output logic [DATA_WIDTH-1:0]    PCPlus4W
);

reg aluresult(
    .clk(clk),
    .in(ALUResultM),
    .out(ALUResultW)
);

reg readdata(
    .clk(clk),
    .in(ReadDataM),
    .out(ReadDataW)
);

reg pcplus4(
    .clk(clk),
    .in(PCPlus4M),
    .out(PCPlus4W)
);

endmodule
