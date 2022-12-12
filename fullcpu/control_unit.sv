module control_unit #(
    // parameter ADDRESS_WIDTH = 32
    // do we even use this ADDRESS_WIDTH?
)(
    input logic      [6:0]      op,      // Instr[6:0]
    input logic      [2:0]      funct3,  // Instr[14:12]
    input logic                 funct7,  // Instr[30]
    input logic                 Zero,
    output logic                RegWrite,
    output logic     [2:0]      ImmSrc,
    output logic                ALUSrc,
    output logic     [2:0]      ALUControl,
    output logic                MemWrite,
    output logic                ResultSrc,
    output logic                PCSrc,
    output logic                jalmuxSel,
    output logic                jalrmuxSel
);

always_comb begin

    // Initialising Outputs
    RegWrite = 1'b0;
    ImmSrc = 3'b000;
    ALUSrc = 1'b0;
    ALUControl = 3'b000;
    MemWrite = 1'b0;
    ResultSrc = 1'b0;
    PCSrc = 1'b0; 
    jalmuxSel = 1'b0;
    jalrmuxSel = 1'b0;

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
        7'b0010011: // immediate instructions
            case(funct3)
                3'b000: // addi
                begin 
                    RegWrite = 1'b1;
                    ImmSrc = 3'b000;
                    ALUControl = 3'b000;
                    ALUSrc = 1'b1;
                end

                3'b001: // slli
                    case(funct7)
                        1'b0:
                        begin
                            RegWrite = 1'b1;
                            ImmSrc = 3'b000;
                            ALUControl = 3'b110;
                            ALUSrc = 1'b1;   
                        end
                    endcase
            endcase

        7'b1100011: // branch instructions
            case(funct3)
                3'b000: // beq
                    case(Zero)
                        1'b1:
                        begin
                            PCSrc = 1'b1;
                            ImmSrc = 3'b010;
                            ALUControl = 3'b001;
                        end
                    endcase
                    
                3'b001: // bne
                    case(Zero)
                        1'b0:
                        begin
                            PCSrc = 1'b1;
                            ImmSrc = 3'b010;
                            ALUControl = 3'b001;
                        end
                    endcase
            endcase

        7'b0100011: // store instructions
            case(funct3)
                3'b010: // sw
                begin
                    ResultSrc = 1'b1;
                    MemWrite = 1'b1;
                    ImmSrc = 3'b001;
                    ALUControl = 3'b000;
                end
            endcase

        7'b0000011: // load instructions
            case(funct3)
                3'b010: // lw
                begin
                    ResultSrc = 1'b1;
                    RegWrite = 1'b1;
                    ImmSrc = 3'b000;
                    ALUControl = 3'b000;
                end
            endcase
        
        7'b1101111:  // jal
            begin
                ImmSrc = 3'b100;
                jalmuxSel = 1'b1;
                RegWrite = 1'b1;
                PCSrc = 1'b1;
            end

        7'b1100111: 
            case(funct3)
                3'b000: // jalr
                begin
                    ImmSrc = 3'b000;
                    jalmuxSel = 1'b1;
                    RegWrite = 1'b1;
                    PCSrc = 1'b1;
                    jalrmuxSel = 1'b1;
                end
            endcase

        7'b0110111:     // lui
            begin
                ImmSrc = 3'b101;
                RegWrite = 1'b1;
                ALUControl = 3'b100;
                ALUSrc = 1'b1;
            end

        7'b0000011:  
            case(funct3)  // lbu
                3'b100:
                    ImmSrc = 3'b110;
                    ALUSrc = 1'b1;
                    ResultSrc = 1'b1;
                    RegWrite 1'b1;
            endcase
    endcase
end
endmodule
