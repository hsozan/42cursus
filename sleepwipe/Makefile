NAME = stay
CC = gcc
CFLAGS = -Wall -Werror -Wextra -Iincludes
LDFLAGS = -framework CoreFoundation -framework IOKit -lcurl -lxml2
RM = rm -rf
UTILS = scripts/apiresult.txt
GCH = includes/*.gch
SOURCES = $(wildcard sources/*.c)
OBJECTS = $(SOURCES:.c=.o)

all: $(OBJECTS)
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJECTS) -o $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	$(RM) $(OBJECTS)
	$(RM) $(GCH)
fclean: clean
	$(RM) $(NAME)
	$(RM) $(OBJECTS)
	$(RM) $(GCH)
	$(RM) $(UTILS)
re: fclean all
.PHONY: all clean fclean re
