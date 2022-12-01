main:
    

f1loop:
    addi a1, zero, 0x00 #a1 = 8'b0
    addi a1, a1, 0x01
    addi a1, a1, 0x02
    addi a1, a1, 0x04
    addi a1, a1, 0x08
    addi a1, a1, 0x10
    addi a1, a1, 0x20
    addi a1, a1, 0x40
    addi a1, a1, 0x80

iloop:
    jal a0, f1loop
