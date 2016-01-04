;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/27 14:10:45 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/27 14:10:49 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
global _ft_strcat

_ft_strcat:
	mov			rbx,	rdi
	mov			rcx,	rsi

while01:
	cmp 		byte	[rbx],	0
	je			do_it
	add			rbx, 1
	jmp			while01

do_it:
	cmp 		byte	[rcx],	0
	je			end
	mov			rax,	[rcx]
	mov			[rbx],	al
	inc			rcx
	inc			rbx
	jmp			do_it

end:
	mov 		byte	[rbx],	0
	mov			rax,	rdi
	ret
