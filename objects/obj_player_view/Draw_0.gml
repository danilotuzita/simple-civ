draw_text(
    0,0,
    string(mouse_x - table_x) + " " + string(mouse_y - table_y)
);

draw_text(
    0, 32,
    "Selected Tile: " + string(selected_tile)
);

for (var i = 0; i < table_width; i++)
{
	for (var j = 0; j < table_height; j++)
	{
		var x1 = table_x + (i * tile_width) + (i * 2);
		var y1 = table_y + (j * tile_height) + (j * 2);
		var x2 = x1 + tile_width + 1;
		var y2 = y1 + tile_height + 1;
		var hovering = point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2);
		var current_tile = i + table_width * j
		if (hovering && mouse_check_button_released(mb_left))
		    selected_tile = current_tile;

		var c = (selected_tile == current_tile) ? selected_color : (hovering ? highlight_color : default_color);

        draw_rect_color(x1, y1, x2, y2, c, true);
		var tile = map.table[# i, j];
	    draw_sprite(tile.type, -1, x1 + 1, y1 + 1);
	}
}