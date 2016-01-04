;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/02/18 14:08:12 by shamdani          #+#    #+#              ;
;    Updated: 2015/02/18 14:15:23 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	    global _ft_tolower
	    extern _ft_isupper

_ft_tolower:
	    cmp     rdi,        0
	    je      end

test_char:
	    call    _ft_isupper
	    cmp     rax,        0
	    je      end
	    add     rdi,        32

end:
	    mov     rax,        rdi
	    ret
