#x86汇编语言:从实模式到保护模式

每个文件夹对应着书的章节，同时有该章节的检测题答案。

**配套文件下载:**

http://www.lizhongc.com/x86asm/serv.asp



**检测题答案（网上不全）:**

https://www.cnblogs.com/leec/p/8150645.html



建议下载配套文件，其中有各章节源代码。建议使用作者提供的LEECHUNG.VHD虚拟硬盘文件。

*注意:虚拟硬盘文件位置应置于源代码文件夹内,方便写数据。*

最开始用的mac平台作为学习平台，调试装软件费了很多时间。

所以建议一开始用windows平台学习。

主要是bochs安装过于麻烦,以及最新版的vhd无法用bochs载入(网上说的)，我将写入好的vhd文件使用starwind 转换为*microsoft VHD growable image* 才在bochs中调试成功。



**4.1检测题代码有误，没有指明字符大小.并且没有写够1个扇区（这一错误对新手不是很友好,我最开始以为是软件配置错误**

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





---



参考:

https://github.com/lichuang/x86-asm-book-source