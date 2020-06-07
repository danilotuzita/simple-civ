/// @param tile
/// @param parent
/// @param type
var tile = argument0, parent = argument1, type = argument2;

if (tile.unit > -1)
    return false;

var unit = create_unit(parent, type);
tile.unit = unit;
return true;
