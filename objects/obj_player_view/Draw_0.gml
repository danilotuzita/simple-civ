draw_text(
    0,0,
    string(mouse_x - table_x) + " " + string(mouse_y - table_y)
);

draw_text(
    0, 32,
    "Selected Tile: " + string(selected_tile)
);

draw_text(
    0, 64,
    "Selected Card: " + string(selected_card)
);


if (selected_tile > -1)
{
	var tile_i = get_tile_i(selected_tile);
	var tile_j = get_tile_j(selected_tile);
	draw_text(0, 82, "Tile i: " + string(tile_i) + " j: " + string(tile_j));
}


for (var i = 0; i < table_width; i++)
{
	for (var j = 0; j < table_height; j++)
	{
		var x1 = table_x + (i * tile_width) + (i * 2 * tile_offset);
		var y1 = table_y + (j * tile_height) + (j * 2 * tile_offset);
		var x2 = x1 + tile_width + tile_offset;
		var y2 = y1 + tile_height + tile_offset;
		
		var tile = map.table[# i, j];
		var tile_x = x1 + tile_offset;
		var tile_y = y1 + tile_offset;
	    draw_sprite(tile.type, -1, tile_x, tile_y);
	    if (tile.unit > -1)
	    {
	    	var unit_x = tile_x + unit_offset_x;
	    	var unit_y = tile_y + unit_offset_y;
	    	draw_sprite(tile.unit.sprite_index, -1, unit_x, unit_y);
	    }
	    
		var hovering = point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2);
		var current_tile = get_tile_index(i, j);
		
		if (hovering && mouse_check_button_released(mb_left))
		{
			if (selected_card > -1)
			{
				if (!create_unit_in_tile(tile, parent, CARD.SWORDSMAN))
					create_notification("UNIT ALREADY EXISTS IN TILE", 5);
			}
			else
		    	selected_tile = current_tile;
			selected_card = -1;
		}
		
		var c = (selected_tile == current_tile) ? selected_color : (hovering ? highlight_color : default_color);
        draw_rect_color(x1, y1, x2, y2, c, true);
	}
}