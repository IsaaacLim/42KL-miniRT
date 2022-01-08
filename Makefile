NAME		=	miniRT

SRCS		=	main.c

OBJS		= $(SRCS:.c=.o)

MLX_DIR		=	./mlx/
MLX			=	$(MLX_DIR)libmlx.a
MLX_LIB		=	-Lmlx -lmlx -framework OpenGL -framework AppKit

INCLUDES	=	-I $(MLX_DIR)

CC			=	gcc
CFLAGS		=	-g -Wall -Wextra -Werror


