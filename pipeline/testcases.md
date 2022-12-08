## Test Case 1: Without Hazards

Assembly Code:

main:
    addi a1, zero, 0x00     # initialize a1 to zero
    addi t0, zero, 0x08     # initialize t0 to 0x08
    JAL a3, iloop
    
iloop:                      # acts as a for loop (with n = 8)
    beq a1, t0, main
    addi zero, zero, 0x00   # NOP
    addi t0, t0, 0x01       # increment 1
    addi a1, a1, 0x01       # increment a1 by 1
    JALR a4, a3, 0x00

Machine Code:

00000593
00800293
004006ef
fe558ae3
00128293
00158593
00068767

Test Results:

addi a1, zero, 0x00     # initialize a1 to zero
addi a2, zero, 0x00     # initialize a2 to zero
addi a3, zero, 0x00     # initilalize a3 to zero
addi a4, zero, 0x00     # initialize a4 to zero
addi a5, zero, 0x00     # initialize a5 to zero
addi a6, zero, 0x00     # initialize a6 to zero

addi a1, a1, 0x01       # increment a1 by 1
addi a2, zero, 0x00     # initialize a2 to zero
addi a3, zero, 0x00     # initilalize a3 to zero
addi a4, zero, 0x00     # initialize a4 to zero
addi a5, zero, 0x00     # initialize a5 to zero


## Test Case 2: Pipeline with Hazards

Assembly Code:

Machine Code:

addi a1, zero, 0x01    # initialize a1 to 1




addi zero, zero, 0x00     # initialize a2 to zero
addi zero, zero, 0x00     # initilalize a3 to zero
addi zero, zero, 0x00     # initialize a4 to zero
addi zero, zero, 0x00     # initialize a5 to zero
addi a6, zero, 0x00     # initialize a6 to zero

addi a1, a1, 0x01       # increment a1 by 1
addi a2, zero, 0x00     # initialize a2 to zero
addi a3, zero, 0x00     # initilalize a3 to zero
addi a4, zero, 0x00     # initialize a4 to zero
addi a5, zero, 0x00     # initialize a5 to zero