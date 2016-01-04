;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 11:34:29 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/25 14:41:37 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text
	global _ft_strlen

_ft_strlen:
	push		rdi
	push		rcx
	mov			rcx,	0
	mov byte	al,		0
	not			rcx
	cld
	
	repnz scasb

	not			rcx
	dec			rcx
	mov			rax,	rcx
	pop			rcx
	pop			rdi
	ret