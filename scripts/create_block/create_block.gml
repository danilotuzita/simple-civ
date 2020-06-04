/// @param _x
/// @param _y
/// @param _type
var _x = argument0, _y = argument1, _type = argument2;

if (_type < 0)
    _type = get_random_type();

var block = instance_create_layer(0, 0, layer, obj_block);
block._x = _x;
block._y = _y;
block.x = _x * 64 + table_x;
block.y = _y * 64 + table_y;
block.sprite_index = _type;

return block;