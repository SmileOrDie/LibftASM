;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 15:26:16 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 11:35:08 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isalnum

_ft_isalnum:
    cmp     rdi,    48
	jnge    false
	cmp     rdi,    123
	jge     false
	cmp     rdi,    58
	jnge    true
	cmp     rdi,    65
	jnge    false
	cmp     rdi,    91
	jnge    true
	cmp     rdi,    97
	jnge    false

true:
	mov    rax,     1
	ret

false:
	mov     rax,    0
	ret
	