section .text
global _ft_strdup

extern			_ft_strlen
extern			_malloc

_ft_strdup:
	mov			rbx,	rdi
	call		_ft_strlen
	mov			r8,		rdi
	add			rax,	1
	mov			rdi,	rax
	mov			rcx,	rax
	push		rcx
	call		_malloc
	pop			rcx
	test		rax,	rax
	jz			end
	mov			rdi,	rax
	mov			rdx,	rax
	mov			rsi,	rbx
	repnz		movsb
	mov byte	[rdi],	0
	mov			rax,	rdx
	jmp			end

end:
	ret
