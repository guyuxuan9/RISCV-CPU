module control_unit #(
    parameter ADDRESS_WIDTH = 32
)(
    input logic      [6:0]          op,  //output from Instr Mem
    input logic      [3:0]      funct3,
    input logic                 funct7,
    input logic                   Zero,
    output logic              RegWrite,
    output logic     [2:0]     ALUctrl,
    output logic                ALUsrc,
    output logic     [2:0]      ImmSrc,
    output logic                Branch,
    output logic                  Jump,
    output logic              MemWrite,
    output logic             ResultSrc,
    output logic             jalmuxSel
);

always_comb begin

    // Initialising Outputs
    RegWrite = 1'b0;
    ImmSrc = 3'b000;
    ALUctrl = 3'b000;
    ALUsrc = 1'b0;
    PCsrc = 1'b0; 
    MemWrite = 1'b0;
    ResultSrc = 1'b0;
    jalmuxSel = 1'b0;

    /* if(op == 7'b0110011) // 3 Register Instructions
        if(funct7 == 0)
            if(funct3 == 3'b000) // add
            if(funct3 == 3'b001) // shift left logical
            if(funct3 == 3'b010) // set less than
            if(funct3 == 3'b011) // set less than unsigned
            if(funct3 == 3'b100) // xor
            if(funct3 == 3'b101) // shift right logical
            if(funct3 == 3'b110) // or
            if(funct3 == 3'b111) // and
        if(funct7 == 1)
            if(funct3 == 3'b000) // sub
            if(funct3 == 3'b101) // shift right arithmetic

    if(op == 7'b0000011) // Load Instructions
        if(funct3 == 3'b000) // load byte
        if(funct3 == 3'b001) // load half
        if(funct3 == 3'b010) // load word
        if(funct3 == 3'b100) // load byte unsigned
        if(funct3 == 3'b101) // load half unsigned
    
    if(op == 7'b0010011) // Immediate Instructions
        if(funct3 == 3'b000) // add immediate
        if(funct7 == 0)
            if(funct3 == 3'b001) // shift left logical immediate
            if(funct3 == 3'b101) // shift right logical immediate
        if(funct7 == 1) 
            if(funct3 == 3'b101) // shift right arithmetic immediate
        if(funct3 == 3'b010) // set less than immediate
        if(funct3 == 3'b011) // set less than immediate unsigned
        if(funct3 == 3'b100) // xor immediate
        if(funct3 == 3'b110) // or immediate
        if(funct3 == 3'b111) // and immediate
    
    if(op == 7'b0100011) // Store Instructions
        if(funct3 == 3'b000) // store byte
        if(funct3 == 3'b001) // store half
        if(funct3 == 3'b010) // store word

    if(op == 7'b1100011) // Branch Instructions
        if(funct3 == 3'b000) // branch if equal
        if(funct3 == 3'b001) // branch if not equal
        if(funct3 == 3'b100) // branch if less than
        if(funct3 == 3'b101) // branch if greater than or equal
        if(funct3 == 3'b110) // branch if less than unsigned
        if(funct3 == 3'b111) // branch if greater than or equal unsigned

    if(op == 7'b001011) // add upper immediate to PC

    if(op == 7'b0110111) // load upper immediate

    if(op == 7'b1100111) 
        if(funct3 == 3'b000) // jump and link register*/
    
    case (op)
        7'b0010011: // register instructions
            case(funct3)
                3'b000: // addi
                    begin 
                        RegWrite = 1'b1;
                        ImmSrc = 3'b000;
                        ALUctrl = 3'b000;
                        ALUsrc = 1'b1;
                    end

                3'b001: // slli
                

        7'b1100011: // branch instructions
            case(funct3)
                3'b001: // bne
                if(Zero == 1'b0)
                    begin
                        ImmSrc = 3'b010;
                        PCsrc = 1'b1;
                    end

                3'b000: // beq
                    if (Zero == 1'b1)
                    begin
                        PCsrc = 1'b1;
                        ImmSrc = 3'b010;
                    end
                    else:
                        PCsrc = 1'b0;

            endcase

        7'b0100011: // store instructions
            case(funct3)
                3'b010: // sw
                    MemWrite = 1'b1;
            endcase

        7'b0000011: // load instructions
            case(funct3)
                3'b010: // lw
                    begin
                        ResultSrc = 1'b1;
                        RegWrite = 1'b1;
                    end
            endcase
        
        7'b1101111: // jal
            begin
                ImmSrc = 3'b100;
                jalmuxSel = 1'b1;
            end
        
    endcase
    endcase
end 

endmodule
