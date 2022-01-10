#include <stdio.h> //temp
#include <mlx.h>
#include <stdlib.h>

typedef struct s_data {
	void	*mlx;
	void	*win;
	void	*img;
	char	*addr;
	int		bbp;
	int		len;
	int		endian;
}	t_data;

int	ft_control_hook(t_data *mlx);
int	ft_close_window(t_data *mlx);
