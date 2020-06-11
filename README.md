
#x86汇编语言:从实模式到保护模式
**配套文件下载:**
http://www.lizhongc.com/x86asm/serv.asp
**检测题答案:**
https://www.cnblogs.com/leec/p/8150645.html

建议下载配套文件，其中有各章节源代码。建议使用作者提供的LEECHUNG.VHD虚拟硬盘文件。
*注意:虚拟硬盘文件位置应置于源代码文件夹内,方便写数据。*
作者提供的写入虚拟硬盘的软件是win平台下的。可以使用VirtualBox自带的工具VBoxManage来生成。
```VBoxManage convertfromraw mbr.bin myfile.vhd --format VHD```


**4.1检测题代码有误，没有指明字符大小.并且没有写够1个扇区（这一点巨坑）**
正确代码:
```
 mov ax,0xb800
   mov ds,ax
   mov byte [0x00],'a'
   mov byte [0x02],'s'
   mov byte [0x04],'m'
   jmp $

   times 510-($-$$) db 0
   db 0x55,0xaa
```

实验结果:
![实验结果](https://s1.ax1x.com/2020/06/11/tbJNdg.jpg)

个人感觉这个实验意义不大。
如果感兴趣可以自行下载运行下,LEECHUNG.vhd是我在win平台下使用软件写入后的文件。
链接: https://pan.baidu.com/s/1mKRiE3VxWe63ITCsRgwoDA  密码: be25
参考:
https://github.com/lichuang/x86-asm-book-source