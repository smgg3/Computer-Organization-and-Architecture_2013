org 100h
jmp start
array db 4,2,6
start:
LEA si,array
mov cl,2   
mov al,[si] 
 
large:   
    inc si
    mov bl,[si]
    cmp bl,al
    jl less
    jge great
    less:
        mov al,al     
    great:
        mov al,bl
    loop large   

HLT
