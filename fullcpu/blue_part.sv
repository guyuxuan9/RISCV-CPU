module blue_part #(
    parameter address_width = 32
)(
    input logic                            PCsrc, // output from control unit
    input logic                            clk,
    input logic                            rst,
    input logic [address_width-1:0]        ImmOp, // output from "sign extend" block
    input logic                            jalrmuxSel, // =1 if the instruction is jalr, =0 otherwise
    input logic [address_width-1:0]        rd1,
    output logic [address_width-1:0]       PC
);

//logic       normal_pc;

always_ff@(posedge clk) begin
    if (rst)        PC <= {address_width{1'b0}}; // reset

    if (jalrmuxSel) // jalr instruction
        PC <= rd1 + ImmOp;
    else
        if (PCsrc)      PC <= PC + ImmOp;
        else            PC <= PC + 4;
end

endmodule
