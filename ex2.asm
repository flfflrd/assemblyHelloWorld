global _start

section .data
	; initialise a string with name 'msg'
	msg db "Hello, World!", 0x0a ; 0x0a=0d10=\n
	; assign len to the value of ?the current line? minus msg
	len equ $ - msg ; determine length of msg

section .text
_start:
	mov eax, 4 ; set eax to 4, aka sys_write
	mov ebx, 1 ; ebx=1, or stdout
	mov ecx, msg ; ecx is the string pointer
	mov edx, len ; edx is the string length
	int 0x80 ; perform the sys call
	mov eax, 1
	mov ebx, 0
	int 0x80 ; exit with 0
