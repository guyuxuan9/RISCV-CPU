Disassembly of section .text:

0000000000000000 <_main>:
   0:	020000ef          	jal	ra,20 <_init>
   4:	00000013          	nop
   8:	04c000ef          	jal	ra,54 <_build>
   c:	00000013          	nop

0000000000000010 <_forever>:
  10:	0a8000ef          	jal	ra,b8 <_display>
  14:	00000013          	nop
  18:	ff9ff06f          	j	10 <_forever>
  1c:	00000013          	nop

0000000000000020 <_init>:
  20:	10000593          	li	a1,256
  24:	00000013          	nop
  28:	00000013          	nop

000000000000002c <_loop1>:
  2c:	fff58593          	addi	a1,a1,-1
  30:	00000013          	nop
  34:	00000013          	nop
  38:	10058023          	sb	zero,256(a1)
  3c:	00000013          	nop
  40:	00000013          	nop
  44:	fe0594e3          	bnez	a1,2c <_loop1>
  48:	00000013          	nop
  4c:	00008067          	ret
  50:	00000013          	nop

0000000000000054 <_build>:
  54:	000105b7          	lui	a1,0x10
  58:	00000613          	li	a2,0
  5c:	10000693          	li	a3,256
  60:	0c800713          	li	a4,200

0000000000000064 <_loop2>:
  64:	00c587b3          	add	a5,a1,a2
  68:	00000013          	nop
  6c:	00000013          	nop
  70:	0007c283          	lbu	t0,0(a5)
  74:	00000013          	nop
  78:	00000013          	nop
  7c:	00d28833          	add	a6,t0,a3
  80:	00000013          	nop
  84:	00000013          	nop
  88:	00084303          	lbu	t1,0(a6)
  8c:	00000013          	nop
  90:	00000013          	nop
  94:	00130313          	addi	t1,t1,1
  98:	00000013          	nop
  9c:	00000013          	nop
  a0:	00680023          	sb	t1,0(a6)
  a4:	00160613          	addi	a2,a2,1
  a8:	fae31ee3          	bne	t1,a4,64 <_loop2>
  ac:	00000013          	nop
  b0:	00008067          	ret
  b4:	00000013          	nop

00000000000000b8 <_display>:
  b8:	00000593          	li	a1,0
  bc:	00000013          	nop
  c0:	0ff00613          	li	a2,255

00000000000000c4 <_loop3>:
  c4:	1005c503          	lbu	a0,256(a1) # 10100 
  c8:	00000013          	nop
  cc:	00000013          	nop
  d0:	00158593          	addi	a1,a1,1
  d4:	00000013          	nop
  d8:	00000013          	nop
  dc:	fec594e3          	bne	a1,a2,c4 <_loop3>
  e0:	00000013          	nop
  e4:	00008067          	ret
  e8:	00000013          	nop
