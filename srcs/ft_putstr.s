;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 12:43:54 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/27 14:30:41 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global  _ft_putstr
	extern  _ft_strlen

_ft_putstr:
	mov		rsi,	rdi
	call	_ft_strlen
	cmp		rax,    0
	je		end
	mov		rdx,    rax
	mov		rax,    0x2000004
	mov		rdi,    1
	syscall

end:
	ret