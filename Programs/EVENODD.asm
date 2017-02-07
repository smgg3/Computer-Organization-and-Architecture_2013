
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
.model small
.data
a dw 2h,2h,3h,4h,5h
mov ax,@data
mov ds,ax
.code 
mov si,0
mov ax,a[si]
mov cx,5h
start:
    mov bx,2
    div bx 
    cmp dx,0
    je even
    jne odd
y: 
    
    dec cx
    add si,2
    mov ax,a[si]     
    cmp cx,0
    je exit
    jne start
even: 
    print 'even '
    jmp y
odd:
    print 'odd ' 
    jmp y 

    
    
exit:
DEFINE_PRINT_STRING




