## Reference Program on RISCV
- Gaussian pdf
<video src= Videos/Gaussian_pdf.mp4>

- Sine pdf
<video src= Videos/Sine_pdf.mp4>

- Triangle pdf
<video src= Videos/Triangle_pdf.mp4>

- Noisy pdf
<video src= Videos/Noisy_pdf.mp4>

## F1 light on RISCV
- Python program:
    ```
        s0 = a0 = a1 = a2 = 0
        t0 = 8

        while (a2 != t0):
            a2 += 1
            s0 << 1
            s0 += 1
            a0 = s0
    ```

- Assembly Code:
    ```
    main:
        addi s0, zero, 0x00     # initialize s0 to zero
        addi a0, zero, 0x00     # initialize a0 to zero
        addi a1, zero, 0x00     # initialize a1 to zero
        addi a2, zero, 0x00     # initialize a2 to zero
        addi t0, zero, 0x08     # initialize t0 to 0x08
        JAL a3, iloop

    iloop:                      # acts as a for loop  (with size = 8)
        beq a2, t0, main
        addi a2, a2, 1          # increment 1
        JAL a1, SL             
        JALR a4, a3, 0          # return to address  stored in a3

    SL:
        SLLI s0, s0, 0x01       # shift left logical by 1
        addi s0, s0, 0x01       # increment by 1
        addi a0, s0, 0
        JALR a5, a1, 0          # return to address stored in a1 
    ```
- Results:
    ```
    main:
    0:   addi s0, zero, 0x00     # initialize s0 to zero
    4:   addi a0, zero, 0x00     # initialize a0 to zero
    8:   addi a1, zero, 0x00     # initialize a1 to zero
    C:   addi a2, zero, 0x00     # initialize a2 to zero
    10:  addi t0, zero, 0x08     # initialize t0 to 0x08
    14:  JAL a3, iloop
    ```
    <img src=Images/image1.png>

    ```
    iloop:                         # acts as a for loop (with size = 8)
    18:    beq a2, t0, main
    1C:    addi a2, a2, 1          # increment 1
    20:    JAL a1, SL              
    24:    JALR a4, a3, 0          # return to address stored in a3
    ```

    ```
    SL:
    28:    SLLI s0, s0, 0x01       # shift left logical by 1
    2C:    addi s0, s0, 0x01       # increment by 1
    30:    addi a0, s0, 0
    34:    JALR a5, a1, 0          # return to address stored in a1 
    ```
    \
    <img src=Images/image2.png>
    <img src=Images/image3.png>
    

- Explanation:
    - a0 is the output which goes through 0,1,11,111,...,11111111 and starts from 0 again
    ![image](https://user-images.githubusercontent.com/58468284/205463858-0ff2d871-4de5-4b6d-b72a-2ad9309ff65a.png)

    - a1 stores the next address of JAL instruction in iloop, i.e. 0x24
    <img src=Images/image4.png> 

    - a2 indicates the state of F1 light. a2 should go from 0 to 8 with increment of 1 each time
    ![image](https://user-images.githubusercontent.com/58468284/205463917-1c5f09f1-3762-4d99-8d8d-2aecf996a1a9.png)

    - a3 stores the address of iloop, as it is the next address of JAL instruction in main. (i.e. 0x18)
    <img src=Images/image6.png>

    - a4 stores the address of the next address of JALR instruction in iloop, which is SL. (i.e. 0x28)
    <img src=Images/image7.png>

    - a5 stores the address of the next address of JALR instruction in SL. (i.e. 0x38)
    <img src=Images/image8.png>

    - s0 stores intermediate values of a0 (shift left and plus 1)
    <img src=Images/image9.png>

    - t0 stores the size of the for loop (iloop), i.e. 0x08
    <img src=Images/image5.png> 

- **Return** to the next instruction of JAL is implemented by **JALR**. E.g. 
``` 
    JAL a3, iloop
    ...
    JALR a4, a3, 0 
```
- Input **Trigger** is added. When trigger=1, the program starts. Otherwise, PC remains at 0.
![image](https://user-images.githubusercontent.com/58468284/205464738-ddf0286c-b901-41e4-894c-d708df262cfe.png)
