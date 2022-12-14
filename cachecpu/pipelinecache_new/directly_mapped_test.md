addi s0, zero, 5
addi zero, zero, 0
addi s1, zero, 0

LOOP: beq s0, zero, DONE
lw s2, 4(s1)
lw s3, 12(s1)
lw s4, 8(s1)
addi s0, s0, -1
addi zero, zero, 0
jal LOOP
addi zero, zero, 0

DONE:

Machine code:

00500413
00100493
00040c63
0044a903
00c4a983
0084aa03
fff40413
fedff0ef

00 50 04 13
00 00 00 13
00 00 04 93
02 04 00 63
00 44 a9 03
00 c4 a9 83
00 84 aa 03
ff f4 04 13
00 00 00 13
fe 9f f0 ef
00 00 00 13

00500413
00000493
00040c63
0044a903
00c4a983
0084aa03
fff40413
fedff0ef

Testing with store (swtest):
addi s0, zero, 5
addi s1, zero, 0
addi s5, zero, 4
LOOP: beq s0, zero, DONE
sw s5, 4(s1)
lw s2, 4(s1)
sw s5, 12(s1)
lw s3, 12(s1)
sw s5, 8(s1)
lw s4, 8(s1)
addi s0, s0, -1
jal LOOP
DONE:

machine code (swtest):

00500413
00000493
00400a93
02040263
0154a223
0044a903
0154a623
00c4a983
0154a423
0084aa03
fff40413
fe1ff0ef
