;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 12:00:16 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/27 14:00:18 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	    global _ft_puts
	    extern _ft_strlen
		extern _write
	
_ft_puts:
	cmp			rdi,	0
	je			put_null
	call  		_ft_strlen

	push		rsi
	push		rdx
	push		rdi
	mov 		rsi,	rdi
	mov  		rdx,	rax
	mov  		rax,	0x2000004
	mov   		rdi,	1
	syscall

	jc			out
	push		rax
	mov     	rax,	0x2000004
	mov     	rdi,	1
	mov     	rdx,	1
	lea    		rsi,	[rel rl.string]
	syscall

	jc			out
	pop			rax
	inc			rax
	pop			rdi
	pop			rdx
	pop			rsi
	ret

put_null:
	push		rsi
	push		rdx
	push		rdi
	mov rax,	0x2000004
	mov rdi,	1
	mov	rsi,	null
	mov rdx,	7
	syscall

	jc			out
	pop			rdi
	pop			rdx
	pop			rsi
	ret

out:
	pop			rdi
	pop			rdx
	pop			rsi
	mov			rax,	0
	ret

section	.data
	rl:
		.string db 10
	null:
		.string db `(NULL)`, 10
