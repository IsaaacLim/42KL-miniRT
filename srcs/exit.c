#include "miniRT.h"

int ft_close_window(t_data *mlx)
{
	mlx_destroy_image(mlx->mlx, mlx->img);
	mlx_destroy_window(mlx->mlx, mlx->win);
	// mlx_destroy_display(mlx->mlx);
	free(mlx->mlx);
	exit(0);
}
