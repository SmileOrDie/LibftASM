;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/16 17:55:54 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/16 18:03:51 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_memcpy

_ft_memcpy:
	mov		r10, rdi
	jmp		do_it

do_it:
	cmp		rdi, byte 0
	je		end
	cmp		rsi, byte 0
	je		end
	cld
	mov		rcx, rdx
	rep		movsb
	jmp		end

end:
	mov		rax, r10
	ret
