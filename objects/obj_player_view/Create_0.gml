// MAP AND TILES
parent = -1;
map = global.map;
table_width  = map.table_width;
table_height = map.table_height;
tile_width  = sprite_get_width(TEMPLATE_TILE_SPRITE);
tile_height = sprite_get_height(TEMPLATE_TILE_SPRITE);
tile_offset = 1;
table_x     = floor((room_width / 2) - (table_width / 2 * tile_width));
table_y     = floor((room_height / 2) - (table_height / 2 * tile_height));

default_color = c_white;
highlight_color = c_orange;
selected_color = c_red;
selected_tile = -1;

// UNITS
unit_width = sprite_get_width(TEMPLATE_UNIT_SPRITE);
unit_height = sprite_get_height(TEMPLATE_UNIT_SPRITE);
unit_offset_x = (tile_width / 2) - (unit_width / 2);
unit_offset_y = (tile_height / 2) - (unit_height / 2);

// DECK AND CARDS
card_width  = sprite_get_width(TEMPLATE_CARD_SPRITE);
card_height = sprite_get_height(TEMPLATE_CARD_SPRITE);
deck_x = room_width - 64 - (card_width);
deck_y = 64;
selected_card = -1;
