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

for (var i = 0; i < 1; i++)
{
	var hovering = point_in_rectangle(mouse_x, mouse_y, deck_x, deck_y, deck_x + card_width, deck_y + card_height);
	if (mouse_check_button_released(mb_left) && hovering)
	{
		selected_tile = -1;
		selected_card = i;
	}
	
	var c = (i == selected_card) ? c_red : (hovering ? c_orange : c_white);
	draw_sprite_ext(spr_card_swordsman, -1, deck_x, deck_y, 1, 1, 0, c, 1);
}

