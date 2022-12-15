We have achieved to create a single-cycle CPU from scratch with different instructions, such as addi, lw, jal, etc. We split up the work for the CPU into three parts: PC unit; Sign extend, Instruction Memory and Control Unit; Regfile and ALU. Yuxuan created the PC unit, Zach created the instruction Memory and Control Unit, Johanna created the sign extend unit and Shinde created the ALU and regfile. We then had a Teams call where we tested and debugged the program together.

We then wrote assembly code for the cpu to run, where the result was a Formula 1 light sequence, taking the FSM we created in lab 3 as reference, which we tested on the Vbuddy. Shinde wrote the assembly and Johanna tested it on Vbuddy (IMG_7420.MOV).

Next, we implemented pipelining, for which we divided the tasks into four parts: Registers and Control Unit; Data Hazards; Control Hazards; Testing. Shinde implemented the components for the individual registers and control unit, Yuxuan implemented the top module for each sections in the pipeline and the overall top pipeline module. Zach added nops for data hazards, Johanna added nops for control hazards and tested the pipelined version on Vbuddy (pipeline_vbuddy_test.MOV), and Shinde tested the pipelined cpu and made it run correctly.

Then we tested the reference given to us on both the single-cycle CPU and the pipelined CPU. Yuxuan tested and made the refernce work on our single-cycle CPU, and Shinde did the same for the pipelined CPU.

Lastly, we implemented cache memory, both directly mapped and 2-way associative mapped. Zach implemented the directly mapped cache memory, Johanna implemented the 2-way associative cache memory, and then they both tested and modified both.

| Module                     | Yuxuan | Shinde | Johanna | Zachary |
| -------------------------- | ------ | ------ | ------- | ------- |
| PC                         | \*     |        |         |         |
| Instr Mem                  | \*     |        |         |         |
| Control Unit               | x      | x      | x       | \*      |
| Data Mem                   | x      | x      | x       | \*      |
| Register File              |        | \*     |         |         |
| ALU                        | x      | \*     |         | x       |
| Sign Extend                | x      | x      | \*      |         |
| F1 Machine Code            | x      | \*     | x       |         |
| F1 Testing                 | x      | x      | x       | x       |
| Pipelining Registers       | x      | \*     |         |         |
| Pipelining Control Unit    | \*     | x      |         | x       |
| Pipelining Top             | \*     |        | x       | x       |
| Control Hazard             | x      | x      | \*      |         |
| Data Hazard                | x      | x      |         | \*      |
| Directly Mapped Cache      | x      |        | x       | \*      |
| 2-Way Associative Cache    | x      |        | \*      | x       |
| Test Pipeline w/ Reference | \*     | \*     | x       | x       |
