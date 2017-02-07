              
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
array1 dw  5,2,3,4,1 
temp dw 1
len dw 5
val dw ?
.code
mov ax,@data
mov ds,ax


for1:   
mov ax,len;
sub ax,temp;
mov val,ax;
                mov cx,val 
                lea si,array1;
                var:   
                        mov ax,[si]
                        inc si 
                        inc si  
                        mov bx,[si]
                        cmp ax,[si];
                        JNC LABEL1 
                        jc incr;
                        
                        LABEL1:                        
                        xchg ax,[si]; 
                        xchg ax,[si-2];
                         incr:
                         
                        
                loop var

inc temp
cmp temp,5
jz exit
jmp for1

exit:
    ret




