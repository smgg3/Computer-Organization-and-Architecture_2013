org 100h
jmp start
start:
    mov al,4 
    mov bl,4 
    mov cl,3 
    dec bl
fact:
     mul bl
     dec bl
     loop fact
     
HLT