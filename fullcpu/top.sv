module top#(
    parameter ADDRESS_WIDTH = 32,
    DATAOUT_WIDTH = 32
)(
    input logic                            PCsrc, // output from control unit
    input logic                            clk,
    input logic                            rst,
    input logic [DATAOUT_WIDTH-1:0]        ImmOp, // output from "sign extend" block
  //  output logic [ADDRESS_WIDTH-1:0]       PC,
  //  input logic [ADDRESS_WIDTH-1:0]        A,
    output logic [DATAOUT_WIDTH-1:0]       RD,
    output logic [ADDRESS_WIDTH-1:0]       PC_out
);

logic [ADDRESS_WIDTH-1:0]        A;

blue_part pc(
    .PCsrc(PCsrc),
    .clk(clk),
    .rst(rst),
    .ImmOp(ImmOp),
    .PC(A)
);

instr_mem mem(
    .A(A),
    .RD(RD)
);

assign PC_out = A;
endmodule
