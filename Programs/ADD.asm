
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h
.model small
.code
start:
     mov ax,5h 
     mov bx,6h 
     add ax,bx

call print_num



ret 
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS




