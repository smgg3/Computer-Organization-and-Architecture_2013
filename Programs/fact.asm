
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
num dw 5
result dw ?
.code
 mov ax,@data
 mov ds,ax
 mov ax,1
 mov cx,num
 fact:
 mul cx
 mov result,ax
 loop fact
ret




