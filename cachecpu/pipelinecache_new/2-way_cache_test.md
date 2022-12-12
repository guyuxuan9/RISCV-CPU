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

00 50 04 13
00 00 04 93
00 04 0a 63
00 44 a9 03
02 44 aa 03
ff f4 04 13
ff 1f f0 6f
