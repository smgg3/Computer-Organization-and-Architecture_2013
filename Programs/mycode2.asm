
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small
org 100h


; add your code here 
.code
start:
    mov dl,'a';
    mov ah,2h;
    int 21h;
    mov ax,4c00h;
    int 21h
    end start

ret                            n




