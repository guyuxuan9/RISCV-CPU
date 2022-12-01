module control_unit #(
    parameter address_width = 7
)(
    input logic      [address_width-1:0]   instr,  //output from Instr Mem
    input logic         Zero,
    output logic        RegWrite,
    output logic       [2:0] ALUctrl,
    output logic        ALUsrc,
    output logic       [2:0] ImmSrc,
    output logic        PCsrc,
    output logic        MemWrite,
    output logic        ResultSrc,
    output logic        jalmuxSel
);

always_comb begin
    RegWrite = 1'b0;
    ImmSrc = 3'b000;
    ALUctrl = 3'b000;
    ALUsrc = 1'b0;
    PCsrc = 1'b0; 
    MemWrite = 1'b0;
    ResultSrc = 1'b0;
    jalmuxSel = 1'b0;
    if(instr[6:0] == 7'b0010011) // addi
        begin 
        RegWrite = 1'b1;
        ImmSrc = 3'b000;
        ALUctrl = 3'b000;
        ALUsrc = 1'b1;
        end
    if(instr[6:0] == 7'b1100011) // bne
        if(Zero == 1'b0)
        begin
            ImmSrc = 3'b010;
            PCsrc = 1'b1;
        end
    if(instr[6:0] == 7'b0100011) // sw 
        MemWrite = 1'b1;
    if(instr[6:0] == 7'b0000011) // lw 
        begin
        ResultSrc = 1'b1;
        RegWrite = 1'b1;
        end
    if(instr[6:0] == 7'b1101111) // jal
        begin
        ImmSrc = 3'b100;
        jalmuxSel = 1'b1;
        end
end 

endmodule
