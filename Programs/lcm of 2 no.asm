include 'emu8086.inc'
org 100h
jmp start
c db 1

start: 
print 'Enter 1st no:'
CALL scan_num  
mov ax,cx 
print 'Enter 2nd no:'
CALL scan_num
mov bx,cx  
mov dx,ax
st: 
mul c
div bl  
inc c
cmp ah,0
jz last 
mov ax,dx
jmp st

last: 
print 'The LCM of two numbers is:'
mul bl  
call print_num


ret         
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
end



