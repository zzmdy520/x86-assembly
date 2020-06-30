         ;代码清单7-2
         ;文件名：c07_2.asm
         ;文件说明：硬盘主引导扇区代码
         ;创建日期:2017-10-05 18:12

         jmp near start

 message db '1+2+3+...+1000='

 start:
         mov ax,0x7c0           ;设置数据段的段基地址 
         mov ds,ax

         mov ax,0xb800          ;设置附加段基址到显示缓冲区
         mov es,ax

         ;以下显示字符串 
         mov si,message          
         mov di,0
         mov cx,start-message
     @g:
         mov al,[si]
         mov [es:di],al
         inc di
         mov byte [es:di],0x07
         inc di
         inc si
         loop @g

         ;以下计算1到1000的和,500500 

         xor ax,ax
         xor dx,dx
         mov cx,1000
     @f:
         add ax,cx
         adc dx,0
         loop @f                

         mov bx,10
         xor cx,cx
     @d:
         inc cx
                            ;原来xor dx,dx在这里
         div bx
         or dl,0x30
         push dx
         xor dx,dx          ;现在在这里
         cmp ax,0
         jne @d

         ;以下显示各个数位 
     @a:
         pop dx
         mov [es:di],dl
         inc di
         mov byte [es:di],0x07
         inc di
         loop @a

         jmp near $ 


times 510-($-$$) db 0
                 db 0x55,0xaa