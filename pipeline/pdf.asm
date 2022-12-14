pdf.out.reloc:     file format elf32-littleriscv

// ISSUES:
// jal instruction not returning to the address stored at ra

Disassembly of section .text:

bfc00000 <main> (File Offset: 0x1000):
main():
bfc00000:	020000ef          	jal	ra, bfc00020 <init> (File Offset: 0x1010)
bfc00004: 00000013            addi zero, zero, 0
bfc00008:	050000ef          	jal	ra, bfc00058 <build> (File Offset: 0x1024)
bfc0000c: 00000013            addi zero, zero, 0

bfc00010 <forever> (File Offset: 0x1008):
forever():
bfc00010:	0a8000ef          	jal	ra, bfc000b8 <display> (File Offset: 0x1058)
bfc00014: 00000013            addi zero, zero, 0
bfc00018:	ff9ff06f          	jal	zero, bfc00010 <forever> (File Offset: 0x1008)
bfc0001c: 00000013            addi zero, zero, 0

bfc00020 <init> (File Offset: 0x1010):
init():
bfc00020:	10000593          	addi	a1,zero,256
bfc00024: 00000013            addi zero, zero, 0
bfc00028: 00000013            addi zero, zero, 0

bfc0002c <_loop1> (File Offset: 0x1014):
_loop1():
bfc0002c:	fff58593          	addi a1, a1, -1
bfc00030: 00000013            addi zero, zero, 0
bfc00034: 00000013            addi zero, zero, 0
bfc00038:	10058023          	sb	zero, 256(a1)
bfc0003c: 00000013            addi zero, zero, 0
bfc00040: 00000013            addi zero, zero, 0
bfc00044:	fe0594e3          	bne	a1,zero, bfc0002c <_loop1> (File Offset: 0x1014)
bfc00048: 00000013            addi zero, zero, 0
bfc0004c: 00000013            addi zero, zero, 0
bfc00050:	00008067          	jalr	zero, 0(ra)
bfc00054: 00000013            addi zero, zero, 0

bfc00058 <build> (File Offset: 0x1024):
build():
bfc00058:	000105b7          	lui	a1,0x10
bfc0005c:	00000613          	addi	a2,zero,0
bfc00060:	10000693          	addi	a3,zero,256
bfc00064:	0c800713          	addi	a4,zero,200

bfc00068 <_loop2> (File Offset: 0x1034):
_loop2():
bfc00068:	00c587b3          	add	a5, a1, a2
bfc0006c: 00000013            addi zero, zero, 0
bfc00070: 00000013            addi zero, zero, 0
bfc00074:	0007c283          	lbu	t0, 0(a5)
bfc00078: 00000013            addi zero, zero, 0
bfc0007c: 00000013            addi zero, zero, 0
bfc00080:	00d28833          	add	a6, t0, a3
bfc00084: 00000013            addi zero, zero, 0
bfc00088: 00000013            addi zero, zero, 0
bfc0008c:	00084303          	lbu	t1, 0(a6)
bfc00090: 00000013            addi zero, zero, 0
bfc00094: 00000013            addi zero, zero, 0
bfc00098:	00130313          	addi t1, t1, 1
bfc0009c: 00000013            addi zero,zero,0
bfc000a0: 00000013            addi zero,zero,0
bfc000a4:	00680023          	sb t1, 0(a6)
bfc000a8:	00160613          	addi a2, a2, 1
bfc000ac:	fae31ee3          	bne	t1, a4, bfc00068 <_loop2> (File Offset: 0x1034)
bfc000b0:	00008067          	jalr	zero, 0(ra)
bfc000b4: 00000013            addi zero, zero, 0

bfc000b8 <display> (File Offset: 0x1058):
display():
bfc000b8:	00000593          	addi	a1, zero, 0
bfc000bc: 00000013            addi zero, zero, 0
bfc000c0:	0ff00613          	addi	a2, zero, 255

bfc000c4 <_loop3> (File Offset: 0x1060):
_loop3():
bfc000c4:	1005c503          	lbu	a0,256(a1) # 10100 <base_data+0x100> (File Offset: 0xffffffff40411100)
bfc000c8:	00158593          	addi	a1, a1, 1
bfc000cc: 00000013            addi zero, zero, 0
bfc000d0: 00000013            addi zero, zero, 0
bfc000d4:	fec598e3          	bne	a1,a2, bfc000c4 <_loop3> (File Offset: 0x1060)
bfc000d8: 00000013            addi zero, zero, 0
bfc000dc: 00000013            addi zero, zero, 0
bfc000e0:	00008067          	jalr	zero, 0(ra)
bfc000e4: 00000013            addi zero, zero, 0


Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes> (File Offset: 0x1070):
   0:	1e41                	.2byte	0x1e41
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <max_count-0xb4> (File Offset: 0x1084)
   c:	0014                	.2byte	0x14
   e:	0000                	.2byte	0x0
  10:	7205                	.2byte	0x7205
  12:	3376                	.2byte	0x3376
  14:	6932                	.2byte	0x6932
  16:	7032                	.2byte	0x7032
  18:	5f30                	.2byte	0x5f30
  1a:	326d                	.2byte	0x326d
  1c:	3070                	.2byte	0x3070
	...