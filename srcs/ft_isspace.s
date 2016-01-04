;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isspace.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 10:43:31 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 11:01:07 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isspace

_ft_isspace:
	cmp		rdi,	9
	je		true
	cmp		rdi,	10
	je		true
	cmp		rdi,	11
	je		true
	cmp		rdi,	32
	je		true

false:
	mov		rax,	0
	ret

true:
	mov		rax,	1
	ret