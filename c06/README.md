# README

**检测点6.1**

字节,字,si,di,rep,cx,cld,std,减少

**检测点6.2**

C,F

**检测点6.3**

bdata0 0xf0,0xff,0x81

data0 0xf0,0xff,0x81

data1 0xffff,0x8a08

**检测点6.4**

（1）

1,1,0,1,0,0,0,0,0

（2）

```assembly
cmp AX,BX
jg lbb
je lbz
jl lbl
```

**检测点6.5**

略

**本章习题**

1)

data0 0xff,0x80,0xf0,0x97

Data1 0xfff0,0xc5bc

2)略

3)65536

loop是先减再判断,第一次0-1 = 0xff,于是cx=65535。最后循环次数是65535+1=65536

