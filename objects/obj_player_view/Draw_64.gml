for (var i = 0; i < table_width; i++)
{
	var txt = chr(65 + i);
	draw_text(table_x + i * tile_width + 28, table_y - 32, txt);
}

for (var j = 0; j < table_height; j++)
{
	var txt = string(-5 + j);
	draw_text(table_x - 32, table_y + j * tile_height + 32, txt);
}
