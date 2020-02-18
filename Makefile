# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ramoukha <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/01 14:51:20 by ramoukha          #+#    #+#              #
#    Updated: 2019/05/13 01:47:03 by ramoukha         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COMP = gcc -Werror -Wextra -Wall -c 
AR = ar rc 
SRC = *.c
OB = *.o
NAME = libft.a

all: $(NAME)

$(NAME):
	$(COMP) $(SRC)
	$(AR) $(NAME) $(OB)

clean:
	rm -f $(OB)

fclean: clean
	rm -f $(NAME)

re: fclean all
