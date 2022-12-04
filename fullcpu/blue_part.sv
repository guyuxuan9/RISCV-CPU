module blue_part #(
    parameter ADDRESS_WIDTH = 32
)(
    input logic                             PCSrc, // output from control unit
    input logic                             clk,
    input logic                             rst,
    input logic                             trigger,
    input logic  [ADDRESS_WIDTH-1:0]        ImmOp, // output from "sign extend" block
    input logic                             jalrmuxSel, // =1 if the instruction is jalr, =0 otherwise
    input logic  [ADDRESS_WIDTH-1:0]        rd1,
    output logic [ADDRESS_WIDTH-1:0]        PC
);

// logic  normal_pc;

always_ff@(posedge clk) begin
    if (rst)        PC <= {ADDRESS_WIDTH{1'b0}}; // reset

    if (trigger)
        if (jalrmuxSel) // jalr instruction
            PC <= rd1 + ImmOp;
        else
            if (PCsrc)      PC <= PC + ImmOp;
            else            PC <= PC + 4;
end

endmodule
