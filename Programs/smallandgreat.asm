org 100h
jmp start
array db 4,2,6
start:
LEA si,array
mov cl,2   
mov al,[si] 
mov dl,[si] 
small:   
    inc si
    mov bl,[si]
    cmp bl,al
    jle less
    jg great
    less:
        mov al,bl     
    great:
        mov al,al
    loop small   

HLT
