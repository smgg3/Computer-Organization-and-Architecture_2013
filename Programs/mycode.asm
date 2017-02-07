
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h


; add your code here 
.code
start:
      mov ax,05h;
      mov bx,06h;
      add ax, bx; 
print:
      
      

ret




