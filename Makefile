#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shamdani <shamdani@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/27 18:20:56 by shamdani          #+#    #+#              #
#    Updated: 2015/03/27 18:24:53 by shamdani         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

INCLUDE = includes/
SRCPATH = ./srcs/
CFLAGS = -O3 -Wall -Werror -Wextra
C = \033[1;34m
SRCS =	ft_bzero.s\
	  	ft_memset.s\
	  	ft_isalnum.s\
	  	ft_isalpha.s\
	  	ft_isascii.s\
	  	ft_isdigit.s\
	  	ft_isprint.s\
	  	ft_memcpy.s\
	  	ft_memset.s\
	  	ft_strdup.s\
	  	ft_puts.s\
	  	ft_tolower.s\
	  	ft_toupper.s\
	  	ft_strlen.s\
		ft_strcat.s\
	  	ft_islower.s\
		ft_isspace.s\
		ft_puts_fd.s\
		ft_putstr_fd.s\
	  	ft_isupper.s\
	  	ft_putstr.s\
	  	ft_cat.s

NAME = libfts.a
V = 0
SILENCE_1 :=
SILENCE_0 :=@
SILENCE = $(SILENCE_$(V))
CC = $(SILENCE)gcc
LIB = $(SILENCE)ar rc
RM = $(SILENCE)rm -rf
SRC = $(addprefix $(SRCPATH), $(SRCS))
OBJS= $(SRC:.s=.o)
SKIP_1 :=
SKIP_0 := \033[A
SKIP = $(SKIP_$(V))
U = $(C)[$(NAME)]----->\033[0m

all: $(NAME)

$(NAME):$(OBJS)
	@echo "$(U)$(C)[COMPILE:\033[1;32m DONE$(C)]\033[0m"
	@echo "$(U)$(C)[BUILD LIB]\033[0;32m"
	$(LIB) $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "$(SKIP)$(U)$(C)[BUILD  :\033[1;32m DONE$(C)]\033[0m"

%.o: %.s
	@echo "$(U)$(C)[COMPILE: \033[1;31m$<\033[A\033[0m"
	@echo "\033[0;32m"
	~/.brew/bin/nasm -f macho64 $<
	@echo "\033[1;31m [.working.]"
	@echo "$(SKIP)\033[A\033[2K$(SKIP)"

test: re
	gcc libfts.a test/test.c -o test_asm
	./test_asm

clean:
	@echo "$(U)$(C)[CLEAN]\033[0;32m"
	$(RM) $(OBJS)
	@echo "$(SKIP)$(U)$(C)[CLEAN:\033[1;32m   DONE$(C)]\033[0m"

fclean: clean
	@echo "$(U)$(C)[F-CLEAN]\033[0;32m"
	$(RM) $(NAME)
	$(RM) test_asm
	@echo "$(SKIP)$(U)$(C)[F-CLEAN:\033[1;32m DONE$(C)]\033[0m"

re: fclean all

.PHONY: clean fclean
