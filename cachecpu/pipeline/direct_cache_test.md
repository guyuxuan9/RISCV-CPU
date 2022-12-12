addi s0, zero, 5
addi s1, zero, 0

LOOP:
beq s0, zero, DONE
lw s2, 4(s1)
lw s3, 12(s1)
lw s4, 8(s1)
addi s0, s0, -1
j LOOP

DONE:

Machine Code

00 50 04 13
00 00 04 93
00 04 0c 63
00 44 a9 03
00 c4 a9 83
00 84 aa 03
ff f4 04 13
fe df f0 6f
