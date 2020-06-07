randomize();
table_width = 6;
table_height = 11;
table = ds_grid_create(table_width, table_height);

for (var i = 0; i < table_width; i++)
{
	for (var j = 0; j < table_height; j++)
	{
		table[# i, j] = create_tile(i, j, -1);
	}
}

