
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
.model small 
.data
a dw 1h,5h,6h,7h,8h
mov ax,@data
mov ds,ax

.code

      mov si,0
      mov cx,5h 
      mov ax,a[si]
      
st:
   add si,2
   mov bx,a[si]
   add ax,bx
   dec cx
   cmp cx,1 
   je exit 
   
   jmp st
   
   
exit:
call print_num 
ret
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS



             

