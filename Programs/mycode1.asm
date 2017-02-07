
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
.model small

org 100h
.data 

; add your code here
.code
main proc
    mov ah,02h
    mov al,05h
    mov dl,39h
    mov dh,02h
    mov bh,0h;
    int 10h
    mov ah,4ch
    int 21h
main endp
end main

ret




