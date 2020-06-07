/// @param _x
/// @param _y
/// @param _type
var _x = argument0, _y = argument1, _type = argument2;

if (_type < 0)
    _type = get_random_tile_type();

var tile = instance_create_layer(0, 0, layer, obj_tile);
tile.x = _x;
tile.y = _y;
// tile.x = _x * tile_width  + table_x;
// tile.y = _y * tile_height + table_y;
tile.type = _type;

return tile;