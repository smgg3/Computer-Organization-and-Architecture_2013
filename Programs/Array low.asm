
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
.model small  
.data
 a dw 3h,2h,8h,9h,1h
 mov ax,@data
 mov ds,ax
.code
   mov si,0
   mov cx,5h
   mov ax,a[si]
start:
  add si,2
  mov bx,a[si]
  cmp bx,ax
  jb smaller
  dec cx
  cmp cx,1
  je exit
  jmp start
  
smaller:
mov ax,bx
dec cx
cmp cx,1
je exit 
jmp start
          
    exit:
    call print_num
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS



