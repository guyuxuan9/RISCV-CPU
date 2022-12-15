## Reference program
- Gaussian pdf
https://user-images.githubusercontent.com/58468284/207664582-ce2faf19-6280-46af-ae3f-1b6f330c6f39.mp4

- Triangle pdf

<video src= videos/trianglepdf.mp4>

- Sine pdf

<video src= videos/sinepdf.mp4>

- Noisy pdf

<video src= videos/noisypdf.mp4>


## Summary

Pipeline stages:
1. Fetch
2. Decode
3. Execute
4. Memory
5. Writeback

General Idea: Add registers between each of the five stages

Distinguish signals: F,D,E,M,W to indicate which stage the signal has reached

Register file is written on falling edge of CLK

## Pipeline Hazards
1. Data Hazard
- Register value is not yet written back to register file
(a) Insert nops
(b) Forwarding
(c) Adding Hazard Unit

2. Control Hazard
- Next instruction not decided yet (caused by branch)
    beq, bne:
(a) 

## Sample
![image](https://user-images.githubusercontent.com/58468284/205861052-39326a98-bbf0-4428-95f8-4ff8f7ecbdb9.png)

## Task Distribution:
1. Registers + Control Unit(a)          - SD
2. Overall top module                   - YX
3. Data Hazard                          - ZE
4. Control Unit(b) + Control Hazard     - QJ
