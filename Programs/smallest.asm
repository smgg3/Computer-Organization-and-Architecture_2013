
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start

arr1 db 1,2,3,4,5,0

start:
    
lea si,arr1
mov bl,[si] 
mov cl,6
sum:  
    mov al,[si]
    cmp bl,al
    jg aa:
    jmp tt:
    aa:
        mov bl,al
    tt:
        inc si
    loop sum
ret






ret




