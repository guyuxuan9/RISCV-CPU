## Contributions
In lab 4 I created the sign extend unit and helped with the control unit. We then all had a call and tested the full CPU together. Someone added new instructions to the sign extend unit for the coursework. 
I then changed the names of the inputs and outputs for the different components so that they would all match the reference picture we were given [Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/d722ab14fc442d0ee2c6b51b27aea0eb870b3d8c)
I had then started working on pipelining on Friday the 2nd December, but hadn't pushed it yet [Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/b2bee7f945fcbda4037cb5f36e111a614a49ae7c), and so there was a slight misunderstanding and someone else did it, so I was put in charge of Control Hazards, and at first our group thought we had to implement a hazard unit, so I started that [Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/1c44278a7d12bd23da6ba4610d90563608e137da), but then I asked a TA for clarification, and he said just to stick with nops in the assemply/machine code [Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/2ae91cce9f8815980c864adc1caa8bb6e83720dd)
Then I tested our F1 program for both the fullcpu and the pipelined version on vbuddy to double check that everything was working, and then I uploaded videos of both tests[Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/6dea285b5b917d2e597c4264af31810cb439d7df).
Then I implemented a 2-way associative cache memory[Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/7d290fdaf8846e23ce9aaffba8b3caf558151404), but before I could finalise it and make sure that it worked, I had to help test the directly mapped cache mem, using the examples given in class[Link to commits](https://github.com/EIE2-IAC-Labs/iac-riscv-cw-15/commit/e574414aaaa4edc726992b77af9da6e99f68653e)



## Reflections
I was very lucky to end up in a group where everyone wanted to contribute, and I thought we worked really well as a team and we always went in to labs to work on it. Even though everyone contributed with different things, I still think that we all did a great job of going through each others work and understanding every part of what was going on. Even though I didn't commit much to the pipelined version, I still got to understand it really well through lectures and through discussing it with my fellow group members before it was implemented, and I think they would say the same for other parts, such as cahe memory. 

## Mistakes and how to improve
I should have been more clear to the others about what I was working on, when I was working on the pipelined cpu, so I should improve my communication skills.

## Things I would do if I had more time
- I would implement the hazard unit.
- I would learn how flushing data works, so that I would have a deeper understanding of Control Hazards.
- I would implement all the RISCV instructions and finish the beyond the lab tasks.