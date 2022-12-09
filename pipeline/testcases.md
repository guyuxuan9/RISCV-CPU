## Test Case 1: Without Hazards

Assembly Code:

addi a1, zero, 0x00    # initialize a1 to zero
addi zero, zero, 0     # initialize t0 to 0x08
JAL a3, iloop
    

Machine Code:


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
lw x6, -4(-9)

addi a1, zero, 0x01    # initialize a1 to 1
addi zero, zero, 0x00     
addi zero, zero, 0x00     
addi zero, zero, 0x00     
addi zero, zero, 0x00     
addi zero, zero, 0x00     

addi a1, a1, 0x01       # increment a1 by 1
addi a2, zero, 0x00     # initialize a2 to zero
addi a3, zero, 0x00     # initilalize a3 to zero
addi a4, zero, 0x00     # initialize a4 to zero
addi a5, zero, 0x00     # initialize a5 to zero