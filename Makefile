NAME = libasm.a

SRC = ft_strlen.s \
     ft_strcpy.s \
     ft_strcmp.s \
     ft_write.s \
     ft_read.s \
     ft_strdup.s

SRC_O = $(SRC:.s=.o)
FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(SRC_O)
	echo "Creating libasm.a"
	ar rc $(NAME) $(SRC_O)

%.o: %.s
	echo "Compiling: $<"
	nasm -f elf64 -o $@ $<

clean:
	echo "Cleaning all .s files"
	rm -f $(SRC_O)

fclean: clean
	echo "Also cleaning all .a files"
	rm -f $(NAME)

re: fclean all
