## F1 light on RISCV
- The pseudocode of the program is like this:
    ```
        s0 = a0 = a1 = a2 = 0
        t0 = 8

        while (a2 != t0):
            {a2 += 1
             s0 << 1
             s0 += 1
             a0 = s0}
    ```
    - a0 is the output which goes through 0,1,11,111,...,11111111 and starts from 0 again
    ![image](https://user-images.githubusercontent.com/58468284/205463858-0ff2d871-4de5-4b6d-b72a-2ad9309ff65a.png)

    - s0 is used to store intermediate values of a0 (shift left and plus 1)
    - a2 is used to indicate the state of F1 light. a2 should go from 0 to 8 with increment of 1 each time
    ![image](https://user-images.githubusercontent.com/58468284/205463917-1c5f09f1-3762-4d99-8d8d-2aecf996a1a9.png)
- **Return** to the next instruction of JAL is implemented by **JALR**. E.g. 
``` 
    JAL a3, iloop
    ...
    JALR a4, a3, 0 
``` 