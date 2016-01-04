;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 14:28:07 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/16 13:36:36 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global		_ft_bzero

_ft_bzero:
	push rdi
	mov  al, 0
	mov  rcx, rsi
	rep  stosb
	pop  rdi
	mov	rax,	rdi
	ret
