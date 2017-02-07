include emu8086.inc
org 100h
jmp start   
array db 3,2,3,4,5
start:  
 LEA si,array
 mov cl,5 
 even_odd:  
     mov al,[si]
     mov bl,2
     div bl
     cmp ah,0
     je even
     jne odd
     even:
        print 'even ' 
        jmp loop2
     odd:
        print 'odd '
        jmp loop2 
     loop2:
        inc si
      loop even_odd   

hlt
