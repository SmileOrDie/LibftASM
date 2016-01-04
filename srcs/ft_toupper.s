;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 13:48:12 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 14:15:07 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;


section .text
	global _ft_toupper
	extern _ft_islower

_ft_toupper:
	cmp     rdi,        0
	je      end

test_char:
	call	_ft_islower
	cmp		rax,		0
	je		end
	sub		rdi,		32

end:
	mov		rax,		rdi
	ret
	