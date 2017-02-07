
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  
.data
array dw 1,2,3,4,5
val dw ?
even dw 2
.stack 100h
.code
mov val,2
dec val
mov ax,val
mul even
mov val,ax
lea si,array 
mov cx,val
incr:
inc si
inc si
loop incr

mov ax,[si]
div even
cmp dx,0
jz label1
jne label2
label2:
     mov dl,'O'
     mov ah,2h
     int 21h 
     jmp cr:
label1: 
     mov dl,'E'
     mov ah,2h
     int 21h 
            
cr:
ret




