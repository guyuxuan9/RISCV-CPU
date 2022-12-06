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


2. Control Hazard

## Sample
![image](https://user-images.githubusercontent.com/58468284/205861052-39326a98-bbf0-4428-95f8-4ff8f7ecbdb9.png)
<img src=Reference.png>
