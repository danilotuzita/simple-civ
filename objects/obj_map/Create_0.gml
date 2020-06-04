randomize();
width = 6;
height = 11;
table_x = (1024 / 2) - (6 / 2 * 64);
table_y = 32;
table_grid = ds_grid_create(width, height);

for (var i = 0; i < width; i++)
{
	for (var j = 0; j < height; j++)
	{
		table_grid[# i, j] = create_block(i, j, -1);
	}
}
