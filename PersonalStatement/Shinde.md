## Contributions
For the **basic non-pipelined CPU**, I mainly contributed to the specifications for Register File, ALU and the related MUX, and sign-extend.

ALU and Sign-extend\
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/a0d2c2654bb2f35e3480cf0313a231ece9c87a09

Register File and mux\
https://github.com/shindelee/Lab-IAC-/commit/3888bc70f45026efbc1b48e3428ff50bb62f7c31

When the basic non-pipelined CPU is completed, I implemented the machine code for the F1 program, and Yuxuan and I debugged and tested the program on GTK wave. This helped me to understand the state of each register at each PC address, hence able to process the flow of the program in a comprehensive way.\
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/blob/main/fullcpu/assembly.md

https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/356375cc602ccd77171f834eae33d28b44617b6a

For the **pipelined CPU**, I implemented the registers and control units individual components. During the process, I carried out test cases to ensure that hazards are eliminated. This happened before the reference program is released, and I believe that this is a good way to check if the pipelined cpu functions as expected.

Through testing and reading the pipeline lecture slides, I realised that adding at least 2 NOPs are required between instructions that contributed to hazards.
Instructions such as addi, requires 2 NOPs after it, if the destination register is used in the instruction right after it. Besides, instructions such as jal and jalr, requires 1 NOP after it, whereas instructions such as beq requires 2 NOPs after it.

Register files:
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/3cd7727f6d2f49801fc1f469ce51e5b0a380b92c

Control Units:
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/eff58a7d4fd17a0c17144b41aa8e6b97840fc2b4#diff-7fa0b7a22dc25e9dfa21b4f6001fc7d124391a9fcd6f483a3ae68bdf05e5af96

Adding additional signals in Control Unit:
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/8d6e984e2de51121052c9d0e4afa485f8e852c44

Testing / Evidences:
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/blob/main/pipeline/testcases.md

During the process, I assisted in debugging, creating testbenches/make scripts, and make changes to multiple files, such as alu and control unit, when testing does not performed correctly.

Testbenches/Scripts:
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commits/main/pipeline/tb_vb_reference.cpp
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/blob/main/pipeline/doit_reference.sh

Debugging:
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commits/main/pipeline/control_unit.sv
https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/23aa3ca22d14b5d71e7c3fc7376441baf3a32c48


## Reflections
The learning curve of this coursework is steep, but the group managed to work well together. We often discussed about the progress towards this coursework through Whatsapp, to ensure the coursework can be completed before the deadline. When we faced troubles debugging a certain file, we asked each other for opinions and often solved them together. I learnt that **teamwork** is important as different ideas and opinions often contributed to resolving issues throughout the process.

As an individual, I learnt that coding with precision and care is important, as the files/modules are linked to each other and hence a single mistake can cause the program unable to compile. Furthermore, coding in **SystemVerilog** is a great experience as it allows me to comprehend the side of hardware better. Throughout the coursework, I made mistakes in SystemVerilog syntax and has improved through multiple debugging and practices writing files. Also, **debugging** is a skill that I learnt throughout the coursework as I often do not get the correct result in my first try. Hence, I learnt to trace through the steps precisely (e.g. which registers is related to it) and find out where the mistakes are. 

## Mistakes
Initially, I did not understand the meaning behind commit messages and placed the date/time when i commit as the commit message. However, after a week, I realised that commit messages are meant for the team to comprehend the progress of the coursework and hence I placed purposeful commit messages after that.

## Special Design Decisions
For branch instructions, we realised that the bne and beq instructions are not performing well. Zach and I modified the logic in alu and control unit to differentiate those two instructions.

https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/23aa3ca22d14b5d71e7c3fc7376441baf3a32c48

## Things I would do if more time is given
- Adding Multi-Cycle Integer Multiply / Divide Instructions
- Adding Wishbone Bus Interface

Those two are beyond the coursework and I would like to try these tasks if I had more time.
