
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.Model small
.data
    Binary db 63h
    ans db 00h
    bcd db ?
.code
    mov ax,@data
    mov ds,ax
    mov ax,00h
    mov al,binary
    mov cl,64h
    div cl
    mov bcd,al
    mov al,ah
    mov ah,00h
    mov cl,0ah
    div cl
    mov ans+1,al
    mov ans+2,ah
    or ans,30h
    or ans+1,30h
    or ans+2,30h
    
    mov ah,4ch
    int 21h

ret




