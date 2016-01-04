;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 13:51:33 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/17 13:54:40 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section	.text
	global _ft_isalpha

_ft_isalpha:
	cmp		rdi,	65
	jnge	false
	cmp		rdi,	123
	jge		false
	cmp		rdi,	91
	jnge	true
	cmp		rdi,	97
	jnge	false

true:
	mov    rax,		1
	ret

false:
	mov		rax,	0
	ret