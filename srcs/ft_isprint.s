;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 10:48:31 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 11:04:29 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


	section .text
		global _ft_isprint

_ft_isprint:
cmp		rdi,	32
		jnge	false
		cmp		rdi,	127
		jge		false

true:
		mov		rax,	1
		ret

false:
		mov		rax,	0
		ret
