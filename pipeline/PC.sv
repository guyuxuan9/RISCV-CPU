module PC #(
    parameter ADDRESS_WIDTH = 32
)(
    input logic                             PCSrc,      // output from control unit
    input logic                             clk,
    input logic                             rst,
    input logic                             trigger,
    input logic  [ADDRESS_WIDTH-1:0]        PCTarget,      // output from execution stage
    input logic                             jalrmuxSel, // =1 if the instruction is jalr, =0 otherwise
    input logic  [ADDRESS_WIDTH-1:0]        ALUResult,
    output logic [ADDRESS_WIDTH-1:0]        PC
);

always_ff@(posedge clk) begin
    if (rst)        PC <= 32'hBFC00000; // reset

    else if (trigger)
        if (jalrmuxSel) // jalr instruction
           PC <= ALUResult;
        else
            if (PCSrc)      PC <= PCTarget;
            else            PC <= PC + 4;
end

endmodule
