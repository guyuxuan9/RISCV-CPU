main:
    addi s0, zero, 0x00     # initialize s0 to zero
    addi a0, zero, 0x00     # initialize a0 to zero
    addi t0, zero, 0x08     # initialize t0 to 0x08
    JAL a3, iloop
    
iloop:
    addi a0, a0, 1          # increment 1
    JAL a1, SL              # JAL
    BEQ a0, t0, a3

SL:
    SLLI s0, s0, 0x01       # shift left logical by 1
    addi s0, s0, 0x01

    BEQ zero, 0x00, a1

