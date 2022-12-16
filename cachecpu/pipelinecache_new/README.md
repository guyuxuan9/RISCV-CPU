## pipelinecache test

```
0000000000000000 :
   0:	00500413          	li	s0,5
   4:	00000493          	li	s1,0
   8:	00000013          	nop

000000000000000c :
   c:	00040e63          	beqz	s0,28 
  10:	0044a903          	lw	s2,4(s1)
  14:	00c4a983          	lw	s3,12(s1)
  18:	0084aa03          	lw	s4,8(s1)
  1c:	fff40413          	addi s0,s0,-1
  20:	fedff06f          	j	c 
  24:	00000013          	nop
```
(nops are added to avoid hazards)

- First loop cycle
![image](https://user-images.githubusercontent.com/58468284/208071674-fa80295b-e21c-42ca-a91e-05246c9495d3.png)

- In the first loop, as before, there is nothing in cache, so 3 **lw** instructions result in 3 misses.
- After 3 cycles delay (Fetch,Decode,Execute), cache is updated in the 4th stage (Memory). Note that the update happens at the second half of the 4th stage, because it is specified in **cachemem.sv** that **ram_array** will be written in the **negative clock edge**

- Second loop cycle
![image](https://user-images.githubusercontent.com/58468284/208073479-4a33e5b9-4ec9-44e8-8b99-d698c65f30f4.png)
- **Hit** is 1 this time. Since all the pipelined registers are written in the negative edge of the clock cycle, after 3 negative clock edges (Fetch->Decode, Decode->Execute, Execute->Memory), **hit** will be 1