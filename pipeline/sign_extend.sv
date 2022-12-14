module sign_extend #(
    parameter ADDRESS_WIDTH = 32
)(
    input logic     [ADDRESS_WIDTH-1:7]   instr,   // instruction[31:7]
    input logic                   [2:0]   ImmSrc,  // 2 or 3 bits?
    output logic    [ADDRESS_WIDTH-1:0]   ImmExt
);

always_comb begin
    case(ImmSrc)
        // I-type sign extend
        3'b000: ImmExt[31:0] = {{20{instr[ADDRESS_WIDTH-1]}}, instr[ADDRESS_WIDTH-1:20]};
        // I-type zero extend
        3'b110: ImmExt[31:0] = {{20'b0},instr[ADDRESS_WIDTH-1:20]};
        // S-type
        3'b001: ImmExt[31:0] = {{20{instr[ADDRESS_WIDTH-1]}}, instr[ADDRESS_WIDTH-1:25], instr[11:7]};
        // B-type
        3'b010: ImmExt[31:0] = {{20{instr[ADDRESS_WIDTH-1]}}, instr[7], instr[30:25], instr[11:8], 1'b0};
        // R-type
        //3'b011: ImmExt[31:0] = instr;
        // J-type
        3'b100: ImmExt[31:0] = {{12{instr[31]}}, instr[19:12], instr[20], instr[30:21], 1'b0};
        // U-type
        3'b101: ImmExt[31:0] = {instr[31:12], {12'b0}};
    endcase
    
end

endmodule
