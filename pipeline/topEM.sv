module topEM#(
    parameter DATA_WIDTH = 32
)(
    input logic clk,
    input logic [DATA_WIDTH-1:0]     ALUResultE,
    input logic [DATA_WIDTH-1:0]     WriteDataE,
    // RdE
    input logic [DATA_WIDTH-1:0]     PCPlus4E,

    output logic [DATA_WIDTH-1:0]    ALUResultM,
    output logic [DATA_WIDTH-1:0]    WriteDataM,
    // RdM
    output logic [DATA_WIDTH-1:0]    PCPlus4M
);

reg aluresult(
    .clk(clk),
    .in(ALUResultE),
    .out(ALUResultM)
);

reg writedata(
    .clk(clk),
    .in(WriteDataE),
    .out(WriteDataM)
);

reg pcplus4(
    .clk(clk),
    .in(PCPlus4E),
    .out(PCPlus4M)
);

endmodule