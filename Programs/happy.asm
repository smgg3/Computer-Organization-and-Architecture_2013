
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
  num1 dw 20;
  num2  dw 30;
  var dw 1;
  result dw ?;
.code
  mov ax,@data;  
  mov ds,ax;
  
  check:
    mov ax,num1; 
    mov bx,var;
    mul bx; 
    mov bx,num2;
    div bx;
    cmp dx,0;
    jz label1;
    
    add var,1; 
    xor dx,dx;
jmp check;
label1:
       mov ax,var;
       mov bx,num1;
       mul bx; 
       mov result,ax;
      
       int 21h
ret






ret




