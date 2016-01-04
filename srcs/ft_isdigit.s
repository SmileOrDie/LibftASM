;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/17 15:19:08 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 10:35:45 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp     rdi,    48
	jnge    false
	cmp     rdi,    58
	jge     false
	
true:
	mov    rax,     1
	ret

false:
	mov     rax,    0
	ret
	