## normalcache test

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

<img src=cache_images/image1.png>

## pipelinecache test

Disassembly of section .text:

0000000000000000 :
   0:	00500413          	li	s0,5
   4:	00000493          	li	s1,0
   8:	00000013          	nop

000000000000000c :
   c:	00040e63          	beqz	s0,28 
  10:	0044a903          	lw	s2,4(s1)
  14:	00c4a983          	lw	s3,12(s1)
  18:	0084aa03          	lw	s4,8(s1)
  1c:	fff40413          	addi	s0,s0,-1
  20:	fedff06f          	j	c 
  24:	00000013          	nop

machine code:
00 50 04 13
00 00 04 93
00 00 00 13
00 04 0e 63
00 44 a9 03
00 c4 a9 83
00 84 aa 03
ff f4 04 13
fe df f0 6f
00 00 00 13

<img src=cache_images/image2.png>

## 2-way_cache test