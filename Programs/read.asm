; read.asm: Read and display number of characters entered.
; 

		.model small
		.stack 256

CR equ 13d
LF equ 10d

		.data
prompt db 'Enter any characters $'
result db CR, LF, 'The number of characters entered was $' 

		.code
start:
		mov ax, @data
		mov ds, ax

		mov ax, offset prompt
		call puts ; display prompt
		mov cx, 0	; initialise cx to count chars
Read_chars:
		call getc		; read first character
		cmp al, CR		; is CR
		je Fin_Read
		inc cx
		jmp Read_chars

Fin_Read:
		mov ax, offset result
		call puts ; display result message

		mov ax, cx ; # of chars entered
		call putn ; display number

		mov ax, 4c00h
		int 21h ; finished, back to dos

puts: 		; display a string terminated by $
			; dx contains address of string

		push ax ; save ax
		push bx ; save bx 
		push cx ; save cx
		push dx ; save dx

		mov dx, ax
		mov ah, 9h
		int 21h ; call ms-dos to output string

		pop dx ; restore dx
		pop cx ; restore cx
		pop bx ; restore bx
		pop ax ; restore ax

		ret



putc: ; display character in al

		push ax ; save ax
		push bx ; save bx 
		push cx ; save cx
		push dx ; save dx

		mov dl, al
		mov ah, 2h
		int 21h

		pop dx ; restore dx
		pop cx ; restore cx
		pop bx ; restore bx
		pop ax ; restore ax
		ret


getc: 	; read character into al

		push bx ; save bx 
		push cx ; save cx
		push dx ; save dx

		mov ah, 1h
		int 21h

		pop dx ; restore dx
		pop cx ; restore cx
		pop bx ; restore bx
		ret



putn:				; display number in ax
				; ax contains number (and also div C in above)
				; dx contains remainder (rem in C above)
				; cx contains 10 for division
	push	bx
	push	cx
	push	dx

	mov 	dx, 0			; dx = 0
	push	dx			; push 0 as sentinel
	mov 	cx, 10		; cx = 10

	cmp 	ax, 0
	jge 	calc_digits		; number is negative
	neg 	ax			; ax = -ax; ax is now positive
	push 	ax			; save ax
	mov	al, '-'		; display - sign
	call	putc
	pop	ax			; restore ax

calc_digits:
	div	cx			; dx:ax = ax / cx
					; ax = result, dx = remainder
	add	dx, '0'		; convert dx to digit
	push 	dx			; save digit on stack
	mov	dx, 0 		; dx = 0
	cmp	ax, 0			; finished ?
	jne	calc_digits		; no, repeat process

; 	all digits now on stack, display them in reverse

disp_loop:
	pop	dx			; get last digit from stack
	cmp	dx, 0			; is it sentinel
	je	end_disp_loop 	; if yes, we are finished 
	mov	al, dl		; al = dl
	call	putc			; otherwise display digit
	jmp	disp_loop

end_disp_loop:
	pop dx			; restore registers
	pop cx
	pop bx
	ret



		end start

