;******************************************************************************;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putstr_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/03/26 13:45:36 by shamdani          #+#    #+#              ;
;    Updated: 2015/03/27 15:28:55 by shamdani         ###   ########.fr        ;
;                                                                              ;
;******************************************************************************;

section .text
	global _ft_putstr_fd
	extern _ft_strlen

_ft_putstr_fd:
	cmp rdi, 0
	je	end
	push rdi
	mov rdi, rsi
	call _ft_strlen
	pop rdi
	mov rdx, rax
	mov rax, 0x2000004
	syscall

end:
	ret