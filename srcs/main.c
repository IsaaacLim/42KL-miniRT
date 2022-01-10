#include "miniRT.h"

void my_mlx_pixel_put(t_data *mlx, int x, int y, int color)
{
	char *dst;

	dst = mlx->addr + (y * mlx->len + x * (mlx->bbp / 8));
	*(unsigned int *)dst = color;
}

int main(void)
{
	t_data mlx;

	mlx.mlx = mlx_init();
	mlx.win = mlx_new_window(mlx.mlx, 1920, 1080, "miniRT");
	mlx.img = mlx_new_image(mlx.mlx, 1920, 1080);
	mlx.addr = mlx_get_data_addr(mlx.img, &mlx.bbp, &mlx.len, &mlx.endian);
	my_mlx_pixel_put(&mlx, 5, 5, 0x00FF0000);
	mlx_put_image_to_window(mlx.mlx, mlx.win, mlx.img, 0, 0);
	ft_control_hook(&mlx);
	mlx_loop(mlx.mlx);
}
