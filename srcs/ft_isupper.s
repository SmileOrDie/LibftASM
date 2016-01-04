;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 10:37:37 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 11:01:40 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_isupper

_ft_isupper:
	cmp		rdi,	65
	jnge	false
	cmp		rdi,	91
	jge		false

	mov		rax,	1
	ret

false:
	mov		rax,	0
	ret