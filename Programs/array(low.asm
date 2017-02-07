
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
 include 'emu8086.inc'
org 100h

.model small
.data
a dw 3h,2h,9h,6h,5h
mov ax,@data
mov ds,ax
.code 
mov si,0
mov ax,a[si]
start: 
   
     add si,2
     mov bx,a[si]
     cmp bx,ax
     jb greater
     jmp start
     cmp si,4
     je exit
     
     
greater:
mov ax,bx 

exit:
 call print_num
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  





