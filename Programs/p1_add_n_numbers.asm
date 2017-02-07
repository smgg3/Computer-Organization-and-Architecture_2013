

array db 1,2,3,4,5,6,7,8,9,10 
start:
mov cl,10
LEA si,array
mov al,[si]
add:
    inc si
    add al,[si]  
    mov bl,al
   loop add
end