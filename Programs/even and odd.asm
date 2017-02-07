
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
.model small
.data 

msg1 db 'given is even$'
msg2 db 'given is odd$'
.code 
call scan_num
mov ax,cx
mov bx,2 
idiv bx
cmp dx,0
je exit
jne no
exit:
mov dx,offset msg1
mov ah,9
int 21h
no:
mov dx,offset msg2
mov ah,9
int 21h

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PTHIS
                                             



