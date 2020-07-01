# README

**检测点8.1**

<u>0x70</u>、<u>0x80</u>、<u>0</u>、<u>2</u>、<u>0x80</u>

**检测点8.2**

1.call label_proc

2.call bx

3.call [bx]

4.call 0xf000:0x0002

5.call [0x80]

6.call [8x+di+0x08]

**检测点8.3**

1.2a95

2.

<u>jmp label_proc</u>

<u>Jmp bx</u>

<u>Jmp [bx]</u>

<u>Jmp 0xf000:0x0002</u>

<u>Jmp [0x80]</u>

Jmp  [bx+di+0x08]

**本章习题**

**本章习题**

1.注释掉这一段代码

```assembly
push word [es:code_2_segment]
         mov ax,begin
         push ax                          ;可以直接push begin,80386+
         
         retf                             ;转移到代码段2执行 
```

替换为

```assembly
mov ax,[es:code_2_segment]

mov [entry],ax

Mov ax,begin

Mov [entry+2],ax

call [entry]


```

2.loop会先减1再循环，所以0-1 = 65535。读取了错误的扇区数。