##
## EPITECH PROJECT, 2018
## minilibc
## File description:
## Makefile
##

SRC	=	src/strlen.asm	\
		src/strcmp.asm	\
		src/strchr.asm	\
		src/strncmp.asm	\
		src/strstr.asm	\
		src/strpbrk.asm	\
		src/strcasecmp.asm	\
		src/strcspn.asm	\
		src/memset.asm	\
		src/memcpy.asm	\
		src/memmove.asm	\
		src/rindex.asm	\

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

all:	$(NAME)

%.o: %.asm
	nasm -f elf64 $< -o $@

$(NAME):	$(OBJ)
	ld -shared $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re: fclean all

.PHONY:	re fclean all
