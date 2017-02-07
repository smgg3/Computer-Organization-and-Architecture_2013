
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h
include 'emu8086.inc'
.model small
.data
    a dw 3,4,7,6,2 
    mov ax,@data
    mov ds,ax 
.code
    lea si,a
    mov bx,0
    mov cx,0 
  
start:
   
    mov ax,[si]
    
    cmp bx,[si]
    je next
    jne lu
lu: 
    inc bx
    idiv bl   
    cmp ah,0
    je count
    jne start
count:
   
    add cx,1
    jmp start
next:
    cmp cx,2
    je prime
    jne lab
lab: 
    mov cx,0
    add si,2
    mov bx,0
    jmp start
prime:
    mov cx,0
    call print_num
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    jmp lab


ret




