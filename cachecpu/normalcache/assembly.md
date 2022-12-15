Disassembly of section .text:

0000000000000000 :
   0:	00500413          	li	s0,5
   4:	00000493          	li	s1,0

0000000000000008 :
   8:	00040c63          	beqz	s0,20 
   c:	0044a903          	lw	s2,4(s1)
  10:	00c4a983          	lw	s3,12(s1)
  14:	0084aa03          	lw	s4,8(s1)
  18:	fff40413          	addi	s0,s0,-1
  1c:	fedff06f          	j	8 

machine code:
00 50 04 13
00 00 04 93
00 04 0c 63
00 44 a9 03
00 c4 a9 83
00 84 aa 03
ff f4 04 13
fe df f0 6f
----------------------------------------------
Disassembly of section .text:

0000000000000000 :
   0:	00500413          	li	s0,5
   4:	00000493          	li	s1,0

0000000000000008 :
   8:	00040a63          	beqz	s0,1c 
   c:	0044a903          	lw	s2,4(s1)
  10:	0244aa03          	lw	s4,36(s1)
  14:	fff40413          	addi	s0,s0,-1
  18:	ff1ff06f          	j	8 

machine code:
00 50 04 13
00 00 04 93
00 04 0a 63
00 44 a9 03
02 44 aa 03
ff f4 04 13
ff 1f f0 6f