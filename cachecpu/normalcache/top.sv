module top#(
    parameter ADDRESS_WIDTH = 32,
              DATAOUT_WIDTH = 32
)(
    input logic                            PCSrc, // output from control unit
    input logic                            clk,
    input logic                            rst,
    input logic                            trigger,
    input logic [DATAOUT_WIDTH-1:0]        ImmOp, // output from "sign extend" block
    input logic                            jalrmuxSel, // =1 if the instruction is jalr, =0 otherwise
    input logic [ADDRESS_WIDTH-1:0]        rd1, // output rd1 from regfile
    output logic [DATAOUT_WIDTH-1:0]       RD,
    output logic [ADDRESS_WIDTH-1:0]       PC_out
);

logic [ADDRESS_WIDTH-1:0]        A;

blue_part pc(
    .PCSrc(PCSrc),
    .clk(clk),
    .rst(rst),
    .trigger(trigger),
    .ImmOp(ImmOp),
    .jalrmuxSel(jalrmuxSel),
    .rd1(rd1),
    .PC(A)
);

instr_mem mem(
    .A(A),
    .RD(RD)
);

assign PC_out = A;
endmodule