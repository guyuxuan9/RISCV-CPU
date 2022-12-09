addi s0, zero, 5
addi s1, zero, 0

LOOP:
beq s0, zero, DONE
lw s2, 0x4(s1)
lw s4, 0x24(s1)
addi s0, s0, -1
j LOOP

DONE:

Machine Code

00500413
00000493
00040a63
0044a903
0244aa03
fff40413
ff1ff06f
