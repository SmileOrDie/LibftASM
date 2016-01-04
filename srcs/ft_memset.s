;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 14:36:25 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/27 14:36:26 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_memset

_ft_memset:
	push	rdx
	mov		al,		sil
	mov		rcx,	rdx
	rep		stosb
	pop		rdx
	mov		rax,	rdx
	ret