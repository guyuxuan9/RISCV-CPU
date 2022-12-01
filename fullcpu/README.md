## addi,bne and lw instructions
- > The following is the instructions
![image](https://user-images.githubusercontent.com/58468284/203853225-48375453-4794-4c0d-b968-471bc7c98c56.png)

- The gtkwave displays the expected output:
    - In the beginning, a0 increases by 1
    ![image](https://user-images.githubusercontent.com/58468284/203853602-47a3567f-b09f-42e6-ae14-a7e6b151e184.png)
    - When a0 == 0xFE, in the next cycle, __lw__ instruction will be executed. In this case __dataram[255] = 12345__, so a0 = 12345 immediately after __lw__ instruction is executed.
    ![image](https://user-images.githubusercontent.com/58468284/203854000-fd8dd8cb-77d2-4644-90ca-9681391e08a1.png)
    - Then, this program will be executed again from the beginning and this continues till max cycle is reached.