include 'emu8086.inc'
org 100h
.data
array db 0,0,0,0,0,0,0,0 
c db 2    
a db 0

.code
lea si,array
lea di,array
mov al,00001b
cmp al,9
jl bi

bcd: 
    add al,6
    nop
bi: 
    div c
    mov [si],ah 
    inc si
    and ah,00h
    cmp al,1
    je la
    cmp al,0
    je la
    jne bi
    
la:
    mov [si],al
    nop 
    
mov si,di 
add di,7  

CALL pthis
db 'The BCD number is:',0
    
lp:  
    inc a     
    cmp a,5 
    je gap  
    mov al,[di] 
    call print_num
    cmp si,di
    je stop
    dec di 
    jne lp 
    
gap: 
    print ' '
    jmp lp

    
stop:
    nop

ret         
DEFINE_PTHIS
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
END
    
    
    
    