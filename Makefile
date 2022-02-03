# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elerika <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/19 22:01:38 by elerika           #+#    #+#              #
#    Updated: 2021/10/19 22:01:43 by elerika          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

LIST = 	ft_atoi.c			ft_bzero.c 			ft_calloc.c\
		ft_isalnum.c 		ft_isalpha.c 		ft_isascii.c\
		ft_isdigit.c 		ft_isprint.c		ft_memcmp.c\
		ft_itoa.c 			ft_memchr.c 		ft_memset.c\
		ft_memcpy.c 		ft_memmove.c 		ft_putnbr_fd.c\
		ft_putchar_fd.c 	ft_putendl_fd.c 	ft_strlcat.c\
		ft_putstr_fd.c		ft_strtrim.c		ft_strmapi.c\
		ft_strchr.c 		ft_strdup.c			ft_strrchr.c\
		ft_striteri.c 		ft_strjoin.c 		ft_toupper.c\
		ft_strlcpy.c 		ft_strlen.c 		ft_tolower.c\
		ft_strncmp.c 		ft_strnstr.c 		ft_substr.c\
		ft_split.c\
 		 		
BONUS_LIST =	ft_lstnew.c		ft_lstadd_front.c	ft_lstsize.c\
				ft_lstlast.c	ft_lstadd_back.c	ft_lstdelone.c\
				ft_lstclear.c	ft_lstiter.c		ft_lstmap.c\
				
				

OBJ = $(patsubst %.c, %.o, $(LIST))
BONUS_OBJ = $(patsubst %.c, %.o, $(BONUS_LIST))

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME) : $(OBJ) $(BONUS_OBJ)
	ar rcs $(NAME) $?

%.o : %.c 
	gcc $(FLAGS) -c $< -o $@

bonus :
	make OBJ="$(BONUS_OBJ)" all

clean:
	rm -f $(OBJ) $(BONUS_OBJ)

fclean:	clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re