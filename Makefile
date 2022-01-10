NAME		=	miniRT

SRCS_DIR	=	./srcs/
SRCS_LST	=	exit.c	ft_control_hook.c	main.c
SRCS		=	$(addprefix $(SRCS_DIR), $(SRCS_LST))

OBJS		=	$(SRCS:.c=.o)

HDRS_DIR	=	./includes/
HDRS_LST	=	miniRT.h
HDRS		=	$(addprefix $(HDRS_DIR), $(HDRS_LST))

MLX_DIR		=	./mlx/
MLX			=	$(MLX_DIR)libmlx.dylib
MLX_LIB		=	-Lmlx -lmlx -framework OpenGL -framework AppKit

LIBFT_DIR	=	./libft/
# LIBFT		=	$(LIBFT_DIR)libft.a
LIBFT_HDRS	=	$(LIBFT_DIR)includes/

INCLUDES	=	-I $(HDRS_DIR) -I $(MLX_DIR)

CC			=	gcc
CFLAGS		=	-g -Wall -Wextra -Werror

all : $(MLX) $(NAME)

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(MLX_LIB) $(LIBFT) -o $@

$(SRCS_DIR)%.o : $(SRCS_DIR)%.c $(HDRS)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(MLX) :
	make -C $(MLX_DIR)

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : fclean all

.PHONY: all clean fclean re

