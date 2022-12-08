main:
addi s0, zero, 0x00 # initialize s0 to zero
addi a0, zero, 0x00 # initialize a0 to zero
addi a1, zero, 0x00 # initialize a1 to zero
addi a2, zero, 0x00 # initialize a2 to zero
addi t0, zero, 0x08 # initialize t0 to 0x08
JAL a3, iloop

iloop: # acts as a for loop (with n = 8)
beq a2, t0, main
addi a2, a2, 1 # increment 1
JAL a1, SL  
 JALR a4, a3, 0 # return to address stored in a3

SL:
SLLI s0, s0, 0x01 # shift left logical by 1
addi x0, x0, 0 # no-op for data-hazard
addi x0, x0, 0 # no-op for data-hazard
addi s0, s0, 0x01 # increment by 1
addi x0, x0, 0 # no-op for data-hazard
addi x0, x0, 0 # no-op for data-hazard
addi a0, s0, 0
JALR a5, a1, 0 # return to address stored in a1
