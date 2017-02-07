
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
num1 dw 12
num2 dw 13
result dw ? 
.code
mov ax,@data
mov ds,ax
mov ax,num1
mov bx,num2
mul bx
mov result,ax
gcd:
   mov ax,num2
   mov bx,num1
   div bx
   cmp dx,0
   jz LCM
   mov ax,num1
   mov num2,ax
   
   mov ax,dx
   mov num1,ax
   
   xor dx,dx
jmp gcd

LCM:
mov ax,result
mov bx,num1
div bx
mov result,ax

ret




