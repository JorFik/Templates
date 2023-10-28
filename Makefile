# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: JFikents <JFikents@student.42Heilbronn.de> +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/18 21:57:25 by JFikents          #+#    #+#              #
#    Updated: 2023/10/29 01:45:18 by JFikents         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LIB = ar rcs
RM = rm -rf
CC = cc
CALLMAKE = make -C $(LIBFT_D)
CCFLAGS = -Wall -Wextra -Werror -Ilibft
ADD = -fsanitize=address -g
OBJ+ = $(C_FILES:.c=.o) $(BONUS_FILES:.c=.o)
LIBFT_D = libft/
DEBUGGER = debugger/

NAME = 
H_FILE = $(LIBFT_D)libft.h
A_FILE = $(LIBFT_D)libft.a
C_FILES =

.PHONY: clean fclean re all

all: $(NAME)

# bonus: all

$(NAME) : $(A_FILE) $(OBJ+)
	@cp $(A_FILE) $(NAME)
	@$(LIB) $(NAME) $(OBJ+)


$(A_FILE) :
	@$(CALLMAKE)

%.o : %.c 
	@$(CC) $(CCFLAGS) -c -o $@ $<

clean:
	@$(RM) $(OBJ+)
	@$(CALLMAKE) clean

fclean: clean
	@$(RM) $(NAME)
	@$(CALLMAKE) fclean

re: fclean all

%: c $(A_FILE) %.c
	@cp $(A_FILE) $(NAME)
	@$(CC) $(ADD) $(CCFLAGS) $(H_FILE) $(C_FILES) $(A_FILE)
	@mv a.out.dSYM $(DEBUGGER)
	@mv a.out $(DEBUGGER)
	@mv *.gch $(DEBUGGER)
	@make fclean

c: fclean
	@$(RM) $(DEBUGGER)* 
	@$(RM) $(LIBFT_D)*.gch 
	@$(RM) *.out *.dSYM *.gch 