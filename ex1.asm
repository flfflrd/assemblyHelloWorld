global _start
_start:
	mov eax, 1 ; put the integer 1 into register eax
	mov ebx, 42 ; put int 42 into reg ebx
	sub ebx, 29 ; subtract 29 from ebx, in place
	int 0x80 ; call exit with code ebx(42-29)
