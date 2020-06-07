/// @param _x
/// @param _y
/// @param _type
var _x = argument0, _y = argument1, _type = argument2;

if (_type < 0)
    _type = get_random_type();

var block = instance_create_layer(0, 0, layer, obj_block);
block.x = _x;
block.y = _y;
// block.x = _x * tile_width  + table_x;
// block.y = _y * tile_height + table_y;
block.type = _type;

return block;