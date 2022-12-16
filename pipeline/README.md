## Reference program
- Gaussian pdf

[![](https://user-images.githubusercontent.com/58468284/207982257-ae35cf41-593f-4d31-a1d5-020aa2eab2e8.png)](https://www.youtube.com/shorts/aaOBhFDiVVo)


- Triangle pdf

[![](https://user-images.githubusercontent.com/58468284/207982411-7611befe-f9e7-4183-a3f4-328eb7423db6.png)](https://www.youtube.com/shorts/EHbCkdSwqxY)

- Sine pdf

[![](https://user-images.githubusercontent.com/58468284/207982606-a823344d-8c5c-41bb-9c3c-fd27c6e1a410.png)](https://www.youtube.com/shorts/f8KAQsSRfBo)

- Noisy pdf

[![](https://user-images.githubusercontent.com/58468284/207982715-65425d3d-d6f9-442d-8d42-d6c8a8e4ea04.png)](https://www.youtube.com/shorts/nUaZ_FC3nOw)



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
    beq, bne

## Sample
![image](https://user-images.githubusercontent.com/58468284/205861052-39326a98-bbf0-4428-95f8-4ff8f7ecbdb9.png)

## Task Distribution:
1. Registers + Control Unit(a)          - SD
2. Overall top module                   - YX
3. Data Hazard                          - ZE
4. Control Unit(b) + Control Hazard     - QJ
