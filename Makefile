NAME		=	miniRT

SRCS		=	main.c

OBJS		=	$(SRCS:.c=.o)

MLX_DIR		=	./mlx/
MLX			=	$(MLX_DIR)libmlx.dylib
MLX_LIB		=	-Lmlx -lmlx -framework OpenGL -framework AppKit

INCLUDES	=	-I $(MLX_DIR)

CC			=	gcc
CFLAGS		=	-g -Wall -Wextra -Werror

all : $(MLX) $(NAME)

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(MLX_LIB) $(LIBFT) -o $@

%.o : %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(MLX) :
	make -C $(MLX_DIR)

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY: all clean fclean re

