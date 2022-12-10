## Test Case 1: Without Hazards

Simple testcase to see if it is fundamentally working:

'''
addi a0, zero, 0x00   # initialize a0 to 0x00
addi a1, zero, 0x01   # initialize a1 to 0x01
addi a2, zero, 0x02   # initialize a2 to 0x02
addi a3, zero, 0x03   # initialize a3 to 0x03
addi a4, zero, 0x04   # initialize a4 to 0x04
addi a5, zero, 0x05   # initialize a5 to 0x05
'''

test3.mem

<img src= images/image1.png>

## Test Case 2: Data Hazard due to Data Dependency

'''
addi a1, zero, 0x01     # initialize a1 to 1
addi a1, a1, 0x01       # increment a1 by 1
'''

Results:


## Test Case 3: 

addi a1, zero, 0x00    # initialize a1 to zero
addi a1








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