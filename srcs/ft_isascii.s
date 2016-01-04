;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 15:39:36 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/17 15:42:38 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isascii

_ft_isascii:
	cmp     rdi,    -1
	jnge    false
	cmp     rdi,    128
    jge     false

true:
	mov    rax,     1
	ret

false:
	mov     rax,    0
	ret