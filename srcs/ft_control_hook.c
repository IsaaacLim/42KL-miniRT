#include "miniRT.h"

int	ft_test(t_data *mlx)
{
	(void)mlx;
	printf("PRESSED\n");
	return (1);
}

int	ft_control_hook(t_data *mlx)
{
	mlx_hook(mlx->win, 17, (1L<< 2), ft_close_window, mlx);
	return (1);
}

