map = global.map;
table_width  = map.table_width;
table_height = map.table_height;
tile_width  = sprite_get_width(TEMPLATE_TILE_SPRITE);
tile_height = sprite_get_height(TEMPLATE_TILE_SPRITE);
table_x     = floor((room_width / 2) - (table_width / 2 * tile_width));
table_y     = floor((room_height / 2) - (table_height / 2 * tile_height));

default_color = c_white;
highlight_color = c_orange;
selected_color = c_red;
selected_tile = -1;