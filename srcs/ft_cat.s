;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 14:21:56 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 14:27:49 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global  _ft_cat

_ft_cat:
	cmp		rdi,	-1
	jle		end
	push	rdi
	

loop:
	pop		rdi
	mov		rdx,	buff.len
	mov		rsi,	buff
	mov		rax,	0x2000003
	syscall
	cmp		rax,	buff.len
	jg		end
	cmp		rax,	0
	je		end
	push	rdi
	mov		rdx,	rax	
	mov     rdi,    1
	mov     rax,    0x2000004
	syscall
	jmp		loop

end:
	ret

section .data
	buff db 1
	.len equ $-buff