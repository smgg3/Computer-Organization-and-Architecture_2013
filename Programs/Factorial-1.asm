
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
.model small
.code
mov ax,05
mov bx,05
start:
     dec bx
     mul bx
     cmp bx,1
     je exit
     jmp start
CALL print_num

exit:
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
     

     



