section .text
	global  _ft_puts_fd
	extern  _ft_strlen

_ft_puts_fd:
	cmp		rdi,	0
	jle		end
	push	rdi
	mov		rdi,	rsi
	call	_ft_strlen
	mov		rdx,	rax
	pop		rdi
	mov     rax,    0x2000004
	syscall

endl:
	mov     rax,    0x2000004
	mov     rdx,    1
	lea     rsi,    [rel string.content]
	syscall
	ret

end:
	ret

section .data
	string:
		.content db "", 10
	