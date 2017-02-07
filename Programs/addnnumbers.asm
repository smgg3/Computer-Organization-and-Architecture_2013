org 100h
jmp start
array db 1,2,3,4,5
start: 

LEA si,array
mov cl,4
mov  al,[si]
add:
    inc si
    mov bl,[si]
    add  al,bl  
    loop add
      HLT