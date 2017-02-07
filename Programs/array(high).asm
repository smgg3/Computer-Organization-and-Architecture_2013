
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

 include 'emu8086.inc'
org 100h

.model small
.data
a dw 3h,2h,6h,5h,9h
mov ax,@data
mov ds,ax
.code 
mov si,0
mov ax,a[si]
start: 
   
     add si,2
     mov bx,a[si]
     cmp bx,ax
     ja greater
      
     cmp si,10
      
     
     je exit
     jmp start 
     
greater:
mov ax,bx 

exit:
 call print_num
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  


