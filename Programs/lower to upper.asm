
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

v1 db 'Enter a lower case letter: ','$'
v2 db 'The equivalent uppercase letter: ','$'

.code

start:
mov ax,@data
mov ds,ax

mov ax,offset v1
mov dx,ax
mov ah,9h
int 21h

mov ah,1h
int 21h
mov bl,al
sub bl,32 

mov dx,10
mov ah,2h
int 21h

mov dx,13
mov ah,2h
int 21h

mov dx,offset v2
mov ah,9h
int 21h 

mov dl,bl
mov ah,2h
int 21h

end start



