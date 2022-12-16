## normalcache test （non-pipelined)

```
0000000000000000 :
   0:	00500413          	li	s0,5
   4:	00000493          	li	s1,0

0000000000000008 :
   8:	00040c63          	beqz	s0,20 
   c:	0044a903          	lw	s2,4(s1)
  10:	00c4a983          	lw	s3,12(s1)
  14:	0084aa03          	lw	s4,8(s1)
  18:	fff40413          	addi s0,s0,-1
  1c:	fedff06f          	j	8 
```
- First loop cycle
![image](https://user-images.githubusercontent.com/58468284/208069817-d1cc9cd2-d08d-4a32-bd1f-6c99936f455c.png)
- Second loop cycle
![image](https://user-images.githubusercontent.com/58468284/208070540-9ff20e48-f8b4-4866-85f7-34d748c9ecf9.png)

- This program should have 3 misses in the first cycle and contents in the main memory is then written into cache
- When **lw** is executed again, hit should be 1
- This is exactly what is shown in the waveform