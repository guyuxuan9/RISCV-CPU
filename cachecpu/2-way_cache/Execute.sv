module Execute #(
    parameter DATA_WIDTH = 32
)(
    input logic [2:0]                     ALUControlE,
    input logic                           ALUSrcE,
    input logic [DATA_WIDTH-1:0]          RD1E,
    input logic [DATA_WIDTH-1:0]          RD2E,
    input logic [DATA_WIDTH-1:0]          PCE,
    input logic [DATA_WIDTH-1:0]          ImmExtE,
    output logic [DATA_WIDTH-1:0]         ALUResult,
    output logic                          ZeroE,
    output logic [31:0]                   PCTargetE
);

logic [DATA_WIDTH-1:0]          SrcBE;

mux AluMux(
    .d0(RD2E),
    .d1(ImmExtE),
    .s(ALUSrcE),
    .out(SrcBE)
);

alu ALU(
    .ALUSrcA(RD1E),
    .ALUSrcB(SrcBE),
    .ALUControl(ALUControlE),
    .Zero(ZeroE),
    .ALUResult(ALUResult)
);

assign PCTargetE = PCE + ImmExtE;

endmodule
