
for (var i = 0; i < width; i++)
{
	for (var j = 0; j < height; j++)
	{
		var _x = table_x + (i * 64);
		var _y = table_y + (j * 64);
		draw_rectangle(_x, _y, _x + 64, _y + 64, true);
		var txt = chr(65 + i) + "|" + string(j - 5);
		draw_text(_x + 16, _y + 16, txt);
	}
}
