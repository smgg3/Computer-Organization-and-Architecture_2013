;By Sravani.M(N091869)
include emu8086.inc
org 100h  
jmp start 
arr db 0,0,0,0,0,0,0,0
start:
    lea si,arr
    add si,7
    mov al,10000b 
    mov dl,2
    a:
     mov bh,10
     div bh 
     mov bl,al
     mov cl,4
     mov dh,ah 
     loop1:
            
           mov ax,0
           mov al,dh
           div dl
           cmp ah,1
           jne notequal
           je equal 
           notequal:   
                    mov [si],0
                    dec si
                    mov dh,al
                    loop loop1 
                    jmp aa
           equal:  
                    mov [si],1
                    dec si
                    mov dh,al
                    loop loop1 
                    jmp aa
      aa:      
           cmp bl,0 
           je eq
           jne noteq   
           eq: 
                jmp  RESULT
           noteq:    
                mov ax,0
                mov al,bl
                jmp a 
    RESULT:          
            mov cl,8
            lea si,arr
            mov ax,0
            print 'The BCD is :'
    loop2: 
        mov al,[si]
        call print_num 
        inc si    
        loop loop2     
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS 
END        