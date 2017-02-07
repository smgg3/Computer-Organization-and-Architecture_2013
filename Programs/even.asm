
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.code
start:
     mov ax,07h
     mov bx,02h
     div bx
     cmp ax,0
     je even
     


ret




