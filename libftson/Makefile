NAME = libft.a
PATH_SRC = ./
PATH_INCLUDE = ./
FLAG = -Wall -Wextra -Werror
OPTION = -c
SRC = $(PATH_SRC)ft_memset.c $(PATH_SRC)ft_bzero.c $(PATH_SRC)ft_memcpy.c $(PATH_SRC)ft_memccpy.c $(PATH_SRC)ft_memmove.c $(PATH_SRC)ft_memchr.c $(PATH_SRC)ft_memcmp.c $(PATH_SRC)ft_strlen.c $(PATH_SRC)ft_strdup.c $(PATH_SRC)ft_strcpy.c $(PATH_SRC)ft_strncpy.c $(PATH_SRC)ft_strcat.c $(PATH_SRC)ft_strncat.c $(PATH_SRC)ft_strlcat.c $(PATH_SRC)ft_strchr.c $(PATH_SRC)ft_strrchr.c $(PATH_SRC)ft_strstr.c $(PATH_SRC)ft_strnstr.c $(PATH_SRC)ft_strcmp.c $(PATH_SRC)ft_strncmp.c $(PATH_SRC)ft_atoi.c $(PATH_SRC)ft_isalpha.c $(PATH_SRC)ft_isdigit.c $(PATH_SRC)ft_isalnum.c $(PATH_SRC)ft_isascii.c $(PATH_SRC)ft_isprint.c $(PATH_SRC)ft_toupper.c $(PATH_SRC)ft_tolower.c $(PATH_SRC)ft_strmapi.c $(PATH_SRC)ft_substr.c $(PATH_SRC)ft_strjoin.c $(PATH_SRC)ft_strtrim.c $(PATH_SRC)ft_split.c $(PATH_SRC)ft_itoa.c $(PATH_SRC)ft_putchar.c $(PATH_SRC)ft_putstr.c $(PATH_SRC)ft_putendl.c $(PATH_SRC)ft_putnbr.c $(PATH_SRC)ft_putchar_fd.c $(PATH_SRC)ft_putstr_fd.c $(PATH_SRC)ft_putendl_fd.c $(PATH_SRC)ft_putnbr_fd.c $(PATH_SRC)ft_lstnew.c $(PATH_SRC)ft_lstdelone.c $(PATH_SRC)ft_lstadd.c $(PATH_SRC)ft_lstiter.c $(PATH_SRC)ft_lstmap.c $(PATH_SRC)ft_strlenmodded.c $(PATH_SRC)ft_intlen.c $(PATH_SRC)ft_isstrnull.c $(PATH_SRC)ft_intsort.c $(PATH_SRC)ft_swap.c $(PATH_SRC)ft_calloc.c $(PATH_SRC)ft_strlcpy.c $(PATH_SRC)ft_lstadd_back.c $(PATH_SRC)ft_lstadd_front.c $(PATH_SRC)ft_lstclear.c $(PATH_SRC)ft_lstlast.c $(PATH_SRC)ft_lstsize.c $(PATH_SRC)ft_isblank.c $(PATH_SRC)ft_iscntrl.c $(PATH_SRC)ft_isgraph.c $(PATH_SRC)ft_islower.c $(PATH_SRC)ft_ispunct.c $(PATH_SRC)ft_isspace.c $(PATH_SRC)ft_isupper.c $(PATH_SRC)ft_isxdigit.c $(PATH_SRC)ft_pow.c $(PATH_SRC)ft_split_free.c $(PATH_SRC)ft_sqrt.c
OBJ = $(PATH_SRC)ft_memset.o $(PATH_SRC)ft_bzero.o $(PATH_SRC)ft_memcpy.o $(PATH_SRC)ft_memccpy.o $(PATH_SRC)ft_memmove.o $(PATH_SRC)ft_memchr.o $(PATH_SRC)ft_memcmp.o $(PATH_SRC)ft_strlen.o $(PATH_SRC)ft_strdup.o $(PATH_SRC)ft_strcpy.o $(PATH_SRC)ft_strncpy.o $(PATH_SRC)ft_strcat.o $(PATH_SRC)ft_strncat.o $(PATH_SRC)ft_strlcat.o $(PATH_SRC)ft_strchr.o $(PATH_SRC)ft_strrchr.o $(PATH_SRC)ft_strstr.o $(PATH_SRC)ft_strnstr.o $(PATH_SRC)ft_strcmp.o $(PATH_SRC)ft_strncmp.o $(PATH_SRC)ft_atoi.o $(PATH_SRC)ft_isalpha.o $(PATH_SRC)ft_isdigit.o $(PATH_SRC)ft_isalnum.o $(PATH_SRC)ft_isascii.o $(PATH_SRC)ft_isprint.o $(PATH_SRC)ft_toupper.o $(PATH_SRC)ft_tolower.o $(PATH_SRC)ft_strmapi.o $(PATH_SRC)ft_substr.o $(PATH_SRC)ft_strjoin.o $(PATH_SRC)ft_strtrim.o $(PATH_SRC)ft_split.o $(PATH_SRC)ft_itoa.o $(PATH_SRC)ft_putchar.o $(PATH_SRC)ft_putstr.o $(PATH_SRC)ft_putendl.o $(PATH_SRC)ft_putnbr.o $(PATH_SRC)ft_putchar_fd.o $(PATH_SRC)ft_putstr_fd.o $(PATH_SRC)ft_putendl_fd.o $(PATH_SRC)ft_putnbr_fd.o $(PATH_SRC)ft_lstnew.o $(PATH_SRC)ft_lstdelone.o $(PATH_SRC)ft_lstadd.o $(PATH_SRC)ft_lstiter.o $(PATH_SRC)ft_lstmap.o $(PATH_SRC)ft_strlenmodded.o $(PATH_SRC)ft_intlen.o $(PATH_SRC)ft_isstrnull.o $(PATH_SRC)ft_intsort.o $(PATH_SRC)ft_swap.o $(PATH_SRC)ft_calloc.o $(PATH_SRC)ft_strlcpy.o $(PATH_SRC)ft_lstadd_back.o $(PATH_SRC)ft_lstadd_front.o $(PATH_SRC)ft_lstclear.o $(PATH_SRC)ft_lstlast.o $(PATH_SRC)ft_lstsize.o $(PATH_SRC)ft_isblank.o $(PATH_SRC)ft_iscntrl.o $(PATH_SRC)ft_isgraph.o $(PATH_SRC)ft_islower.o $(PATH_SRC)ft_ispunct.o $(PATH_SRC)ft_isspace.o $(PATH_SRC)ft_isupper.o $(PATH_SRC)ft_isxdigit.o $(PATH_SRC)ft_pow.o $(PATH_SRC)ft_split_free.o $(PATH_SRC)ft_sqrt.o


all: $(NAME)

$(NAME):
	gcc $(FLAG) $(OPTION) $(SRC) -I $(PATH_INCLUDE)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f  $(OBJ)
fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
