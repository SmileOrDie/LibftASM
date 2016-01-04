;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 10:34:58 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 10:37:08 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text
	global _ft_islower

_ft_islower:
	cmp     rdi,    97
	jnge    false
	cmp     rdi,    123
	jge     false

true:
	mov    rax,     1
	ret

false:
	mov     rax,    0
	ret
	