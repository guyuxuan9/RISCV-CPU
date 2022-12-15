## Contribution

### Non-pipelined CPU
- I was mainly responsible for **PC and Instruction Memory**. In order to debug more easily and use memory more efficiently, I have changed the memory block address for **InstrMem** and **DataMem** according to the provided memory map [Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/eeb1262a956008705d21b46a2eec310ec4b53967)
- For the **control unit**, I have added control signals to make **JAL/JALR** work. Initially, we wantted to implement **RET** using unconditional branch (E.g. BEQ Zero,Zero, rd). However, **Branch** instruction can only branch to a Immediate address. It cannot branch to the address stored in register **rd**. Therefore, I thought carefully and did some search online and realised that **RET** is actually implemented using **JALR**. Hence, I added some control signals and a **mux** in PC part to make PC flexible to choose **Jump** and other instructions. Also, a **mux** is added in the write back loop to select between **PC+4** and **normal writing**.
- Then, by modifying  **Shindee**'s assembly code, I have debugged the top level codes and make **F1 light** work! [Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/cc993c3f0bcc52e2040173485920a50e89082b10)
- Finally, when the reference program is given, I have added more instruction implementations [Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/e66a0b7f0897e52ce0887f4e5ac1af61fc34fa16), namely **[lui](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/735753c2ce004068ecaf1b600143982dc4766137),[lbu](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/aeb3a6940a003f0447c8f165848b1c0aea530473),[sb](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/b03029c9c93964174980f282b04730851f626a04)** and tested to make the reference programs work! As an evidence, I can see, for instance, the gaussian pdf plotting on Vbuddy.

### Pipelined CPU
- **Shindee** created a module called **Register.sv** which is a resgister used to pipeline stages. Based on existing files, I have connected all the signals in the top level, so that each signal is pipelined. [commit1](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/9aa84a9b5937c85cb558e3081e001d771e3711b2), [commit2](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/847ecea9dc522fac630033d4b06c7bcecce16b92), [commit3](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/933707b4c1732a9370820e4ed03ae5f05990b2bf)
- A **mux** is added in the fetch stage to implement **JALR**. Additionally, the positions of some modules have changed to accommodate the pipelined architecture. For example, the adder implementing **PC+4** is moved to **execution stage**.
- **NOPs** are added between certain instructions to avoid hazards. After analysing and testing, we realised that at least 2 NOPs are needed between instructions if they cause hazards.
- After connecting all the wires, it's the time for debugging again. I haved fixed bugs and make the pipelined CPU work! [Link to commit](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/6badd170b4d27579fbe376b855b9bbafa3e188d6)
- After the reference programs are given, I have tested them on pipelined CPU as well. **NOPs** needs to be added between some instructions to avoid hazards. Eventually, the reference program works on pipelined CPU. On **Vbuddy**, it shows similar function plots as the non-pipelined CPU. The differene is that for pipelined CPU, it takes longer time to finish one cycle pdf since **NOPs** are added. This makes the execution time longer due to waste cycles.

### Cached CPU
- **Zachary and Johanna** created **cachemem.sv** and connected wires. However, the cache is not working. After analysing the waveforms on GTKWave, I realised that a **cache_WE** is needed, because cache should not be written unless the instruction is, for example, **Load** type. Previously, the cache is written even when the instruction is **addi**. Also, in my opinion, cache should be clocked, because it should update it's content in the next cycle.
- After adding **cache_WE** and **clk**, the non-pipelined cache work! Using the sample program given in the lecture, it shows the correct **hit** and **miss** in the correct cycle. [Link to commit](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/78cfe7002c8ce4503dd33eb47c269af6d8a8791e)
- Then, I have pipelined the **cache_WE** signal to make it work on pipelined CPU as well![Link to commit](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/ac3478f049d599580f09a529f3e95a95150fc9a4)

## Reflections
I have learnt a lot from this course in terms of technical and non-technical skills. 
- Take debugging as an example, there are always some unexpected erros in the codes. From **non-pipelined** to **pipelined** to **cached** CPU, each goal is achieved with a large number of debuggings. For example, connection erros (1 bit connects to 3 bits), missing pins etc. From debugging, I have learnt to look at the error or warning messages carefully and check the corresponding waveform. If the waveform is unexpected, I analysed the reason why the value is unexpected. Normally, I always trace through the targeting register, so that I know at which stage, what is going wrong. Moreover, I have learnt how to search the problem online or ask TAs and Professor Cheung to get an answer.
- Also, since this project is a team project, I have improved my **teamwork spirit**. We often meet in person or call to solve the problems together. I have learnt how to cooperate with others effectively. 
- Overall, I think it's really not bad for what we have done so far. At the beginning of this term, I did not even know what **SystemVerilog** is. Now, I can use it to simulate a RISC-V CPU. It is really a good transition from year 1 to year 2. In year 1, I only know how to simulate a CPU using **graphical simulation tools**. Now, I find it more convenient and efficient to do the simulation using SystemVerilog.

## Things I would do if I had more time
- Implement the hazard unit using forwarding.
- Implement all RISC-V instructions and test them