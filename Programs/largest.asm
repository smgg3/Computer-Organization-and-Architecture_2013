
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc' 
org 100h

jmp start

arr1 db 1,2,3,4,5,6,9

start:
    
lea si,arr1
mov bl,0 
mov cl,07
sum:  
    mov al,[si]
    cmp bl,al
    jl aa:
    jmp tt:
    aa:
        mov bl,al
    tt:
        inc si 
        
    
    loop sum    
    
    


call print_num 

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

ret




