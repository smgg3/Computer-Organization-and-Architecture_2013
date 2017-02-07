
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'
org 100h

.model small
.data
    string db 'BMSCE$'
    length equ(string)
    rvrs db 30 dup(0)
    dis1 DB '-is not a palindrome'
    dis2 db '-is a palindrome'
.code
        mov ax,@data
        mov ds,ax
        mov es,ax
        mov cs,length
        lea si,string+Length-1
        lea di rvrs
    rep:
        mov al,[si]
        mov [di],al
        dec si
        inc di
    loop rep
        lea dx,string
        lea di,rvrs
        mov cx,length
        repe cmpsb
        jnz no
        
        lea dx,dis2
        call display
        jmp over
     NO:
        lea dx,dis1
        call display
     over:
        mov ah,4ch
        int 21h
        
    display proc near
        mov ah,09h
        int 21h
        ret
   display endp

ret




