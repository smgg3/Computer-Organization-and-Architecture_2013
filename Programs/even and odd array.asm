
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'

org 100h
.model small
.data
a dw 2h,3h,1h,6h,5h
mov ax,@data
mov ds,ax
.code
mov si,0
mov ax,a[si]
mov cx,5
start:

mov bx,2
idiv bx
cmp dx,0
je even
jne odd 
dec cx
cmp cx,1
jmp exit


even:
print 'given is even' 
add si,2 
mov ax,a[si] 
call start


odd:
print 'given is odd' 
add si,2 
mov ax,a[si]
call start

exit:

DEFINE_PRINT_STRING
