## Test Case 1: Without Hazards

Simple test case to see if it is fundamentally working:

```
addi a0, zero, 0x00   # initialize a0 to 0x00
addi a1, zero, 0x01   # initialize a1 to 0x01
addi a2, zero, 0x02   # initialize a2 to 0x02
addi a3, zero, 0x03   # initialize a3 to 0x03
addi a4, zero, 0x04   # initialize a4 to 0x04
addi a5, zero, 0x05   # initialize a5 to 0x05
```

<!-- test3.mem -->

<img src= images/image1.png>

<u>Results / Explanations:</u>
- The initialization instructions performed correctly, as there are no data or control hazard involved.

## Test Case 2: Data Hazard due to Data Dependency

```
addi zero, zero, 0x00   # insert NOPs
addi a1, zero, 0x01     # initialize a1 to 1
addi a1, a1, 0x01       # increment a1 by 1
addi a1, a1, 0x01       # increment a1 by 1
```

<!-- test2.mem -->

<img src= images/image5.png>
<img src= images/image6.png>

<u>Results / Explanations:</u>
- At PC = 0x08, a1 does not contain the data 0x01, hence the following instruction at PC = 0x0C could not perform correctly. This results a1 remains as 0x01 throughout the test.
- In addition, a1 = 0x01 after PC = 0x10, since it takes 5 cycles for the register to contain the data.

Solution: Insert NOPs
```
addi zero, zero, 0x00   # insert NOPs
addi a1, zero, 0x01     # initialize a1 to 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00
addi a1, a1, 0x01       # increment a1 by 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00
addi a1, a1, 0x01       # increment a1 by 1
```

<!-- test4.mem -->

<img src = images/image2.png>
<img src = images/image3.png>
<img src = images/image4.png>


<u>Results / Explanations:</u>
- Inserting 2 NOPs after the add instruction means that a1 is updated on the first half of the cycle and the addi instruction now reads the correct value of a1 in the second half of the cycle.


## Test Case 3: Control Hazard (Branch instructions)

```
addi zero, zero, 0x00   # insert NOPs
addi a1, zero, 0x01     # initialize a1 to 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00   
addi a2, zero, 0x01     # initialize a2 to 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00 
addi a3, zero, 0x01     # initialize a3 to 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00 
beq a1, a2, L1
addi zero, zero, 0x00
addi a3, a3, 0x01     # increment a3 by 1
addi zero, zero, 0x00   # insert NOPs

L1:
addi a3, a3, 0x05       # increment a3 by 5
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00
```

<!-- test5.mem -->

<img src = images/image7.png>
<img src = images/image8.png> 
<img src = images/image12.png> 

<u>Results / Explanation:</u>
- Branch is not determined until the **Execute** stage of pipeline.
- Instruction at 0x30 and 0x34 are not carried out due to the branch instruction at 0x24.
- The final value is a3 is 0x06 instead of 0x07.

Solution: Reorder instructions to avoid control hazard  
```
addi zero, zero, 0x00   # insert NOPs
addi a1, zero, 0x01     # initialize a1 to 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00   
addi a2, zero, 0x01     # initialize a2 to 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00 
addi a3, zero, 0x01     # initialize a3 to 1
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00 
beq a1, a2, L1
addi zero, zero, 0x00

L1:
addi a3, a3, 0x05       # increment a3 by 5
addi zero, zero, 0x00   # insert NOPs
addi zero, zero, 0x00
addi a3, a3, 0x01       # increment a3 by 1
addi zero, zero, 0x00   # insert NOPs
```

<!-- test6.mem -->

<img src = images/image9.png> 
<img src = images/image10.png>
<img src = images/image11.png> 

<u>Results / Explanation:</u>
- Instructions are reordered and all instructions are performed correctly.
- The final value is a3 is 0x07.
