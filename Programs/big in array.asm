
org 100h

.data
array1 dw  1,2,3,4,5 
temp dw 1
len dw 5
val dw ?
.code
mov ax,@data
mov ds,ax 
mov cx,len
lea si,array1
mov ax,[si]
mov val,ax
        big: 
                mov ax,[si] 
                cmp val,ax
                jnc Label
                jc label2
                label2:
                mov val,ax;
                  
                label:
                inc si 
                inc si

         loop big 



