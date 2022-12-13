.text
.equ base_pdf, 0x100
.equ base_data, 0x10000
.equ max_count, 200

main:
	jal	ra, 0xBFC00010 
    addi zero, zero, 0x00  # insert NOPs
	jal	ra, 0xBFC00024 
    addi zero, zero, 0x00  # insert NOPs

forever:
	jal	ra, 0xBFC00058 
    addi zero, zero, 0x00  # insert NOPs
	jal	zero, 0xBFC00008 
    addi zero, zero, 0x00  # insert NOPs

init:
	addi a1, zero, 0xFF
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00

_loop1:
	addi a1, a1, -1
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	sb	zero, 256(a1)
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	bne	a1, zero, 0xBFC00014 
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	jalr zero, 0(ra)
    addi zero, zero, 0x00  # insert NOPs

build:
	lui	a1, 0x10
	addi a2, zero, 0x00
	addi a3, zero, 256
	addi a4, zero, 200

_loop2:
	add	a5, a1, a2
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	lbu	t0, 0(a5)
	addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	add	a6, t0, a3
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	lbu	 t1, 0(a6)
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	addi t1, t1, 1
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	sb	 t1, 0(a6)
	addi a2 , a2, 0x01
	bne	 t1, a4, 0xBFC00034 
	jalr zero,0(ra)

display:
	addi a1, zero, 0x00
	addi zero, zero, 0x00  # insert NOPs
	addi a2, zero, 255

_loop3:
	lbu	a0, 256(a1) 
	addi a1, a1, 0x01
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00
	bne	a1, a2, 0xBFC00060 
	addi zero, zero, 0x00
	addi zero, zero, 0x00
	jalr zero, 0(ra)
	addi zero, zero, 0x00

