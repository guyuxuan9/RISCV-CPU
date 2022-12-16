.text
.equ base_pdf, 0x100
.equ base_data, 0x10000
.equ max_count, 200

main:
	jal	ra, 0xBFC00010 
    addi zero, zero, 0x00  # insert NOPs (wait till the decode stage so that PC will jump) 
	jal	ra, 0xBFC00024 
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)

forever:
	jal	ra, 0xBFC00058 
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)
	jal	zero, 0xBFC00008 
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)

init:
	addi a1, zero, 0xFF
    addi zero, zero, 0x00  # insert NOPs, a1 is used in _loop1. 
    addi zero, zero, 0x00  # (There must be at least 2 cycles between init and _loop1 to avoid data hazard)

_loop1:
	addi a1, a1, -1
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00  # (There must be at least 2 cycles between 2 consecutively used a1 to avoid data hazard)
	sb	zero, 256(a1)
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)
    addi zero, zero, 0x00
	bne	a1, zero, 0xBFC00014 
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)
    addi zero, zero, 0x00
	jalr zero, 0(ra)
    addi zero, zero, 0x00  # insert NOPs (wait till the decode stage so that PC will jump)

build:
	lui	a1, 0x10
	addi a2, zero, 0x00
	addi a3, zero, 256
	addi a4, zero, 200

_loop2:
	add	a5, a1, a2
    addi zero, zero, 0x00  # insert NOPs
    addi zero, zero, 0x00  # (There must be at least 2 cycles between 2 consecutively used a5 to avoid data hazard)
	lbu	t0, 0(a5)
	addi zero, zero, 0x00  # insert NOPs (similar reason as above)
    addi zero, zero, 0x00
	add	a6, t0, a3
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)
    addi zero, zero, 0x00
	lbu	 t1, 0(a6)
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)
    addi zero, zero, 0x00
	addi t1, t1, 1
    addi zero, zero, 0x00  # insert NOPs (similar reason as above)
    addi zero, zero, 0x00
	sb	 t1, 0(a6)
	addi a2 , a2, 0x01
	bne	 t1, a4, 0xBFC00034 
	jalr zero,0(ra)

display:
	addi a1, zero, 0x00
	addi zero, zero, 0x00  # insert NOPs (There must be at least 2 cycles between display and _loop3 to avoid data hazard)
	addi a2, zero, 255

_loop3:
	lbu	a0, 256(a1) 
	addi a1, a1, 0x01
    addi zero, zero, 0x00  # insert NOPs There must be at least 2 cycles between 2 consecutively used a1 to avoid data hazard
    addi zero, zero, 0x00
	bne	a1, a2, 0xBFC00060 
	addi zero, zero, 0x00
	addi zero, zero, 0x00
	jalr zero, 0(ra)
	addi zero, zero, 0x00

