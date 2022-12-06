module PC_instr#(
    parameter ADDRESS_WIDTH = 32,
              DATAOUT_WIDTH = 32
)(
    input logic                            PCSrc, // output from control unit
    input logic                            clk,
    input logic                            rst,
    input logic                            trigger,
    input logic [DATAOUT_WIDTH-1:0]        PCTarget,      // output from execution stage
    input logic                            jalrmuxSel, // =1 if the instruction is jalr, =0 otherwise
    input logic [ADDRESS_WIDTH-1:0]        ALUResult, // output from execution stage
    output logic [DATAOUT_WIDTH-1:0]       RD,
    output logic [ADDRESS_WIDTH-1:0]       PC,
    output logic [ADDRESS_WIDTH-1:0]       PCPlus4
);

logic [ADDRESS_WIDTH-1:0]        A;

PC pc(
    .PCSrc(PCSrc),
    .clk(clk),
    .rst(rst),
    .trigger(trigger),
    .PCTarget(PCTarget),
    .jalrmuxSel(jalrmuxSel),
    .ALUResult(ALUResult),
    .PC(A)
);

instr_mem mem(
    .A(A),
    .RD(RD)
);

assign PCPlus4 = A + 4;
assign PC = A;
endmodule
