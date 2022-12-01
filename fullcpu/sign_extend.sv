module sign_extend #(
    parameter ADDRESS_WIDTH = 32
)(
    input logic     [ADDRESS_WIDTH-1:0]   instr;
    input logic                   [2:0]  ImmSrc;
    output logic    [ADDRESS_WIDTH-1:0]   ImmOp;
)

always_comb begin
    case(ImmSrc)
        // I-type
        3b'000: ImmOp[31:0] = {20{instr[ADDRESS_WIDTH-1]}, instr[ADDRESS_WIDTH-1:20]};
        // S-type
        3b'001: ImmOp[31:0] = {20{instr[ADDRESS_WIDTH-1]}, instr[ADDRESS_WIDTH-1:25], instr[11:7]};
        // B-type
        3b'010: ImmOp[31:0] = {20{instr[ADDRESS_WIDTH-1]}, instr[7], instr[30:25], instr[11:8], 1'b0};
        // R-type
        3b'011: ImmOp[31:0] = instr;
        // J-type
        3b'100: ImmOp[31:0] = {11{instr[20]}, instr[31], instr[19:12], instr[11], instr[10:1], 1'b0};
        // U-type
        3b'101: ImmOp[31:0] = {instr[31:12], 12{instr[12]}}

    endcase
    
end

endmodule