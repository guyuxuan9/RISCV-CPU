module pipelined_top#(
    parameter  DATA_WIDTH = 32
) (
    input logic                         clk,
    input logic                         rst,
    input logic                         trigger,
    output logic    [DATA_WIDTH-1:0]    a0
);

logic                           PCSrcE; // output from execution stage
logic                           PCTargetE; // output from execution stage
logic                           jalrmuxSelE; // output from execution stage
logic [DATA_WIDTH-1:0]          ALUResultE;
logic [DATA_WIDTH-1:0]          Instr;
logic [31:0]                    PCPlus4;
logic [31:0]                    PC;
logic [31:0]                    PCD;
logic [31:0]                    InstrD;
logic [31:0]                    PCPlus4D;


Fetch fetch(
    .PCSrc(PCSrcE),
    .clk(clk),
    .rst(rst),
    .trigger(trigger),
    .PCTarget(PCTargetE),
    .jalrmuxSel(jalrmuxSelE),
    .ALUResult(ALUResultE),
    .RD(Instr),         // output
    .PCPlus4(PCPlus4)   // output
    .PC(PC)             // output
);

topFD FD_reg(
    .clk(clk),
    .PCF(PC),
    .InstrF(Instr),
    .PCPlus4(PCPlus4),
    .PCD(PCD),
    .InstrD(InstrD),
    .PCPlus4D(PCPlus4D)
);


endmodule
