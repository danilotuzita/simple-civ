/// @param parent
/// @param type
var parent = argument0, type = argument1;

var unit = instance_create_layer(0, 0, "Hidden_Instances", obj_troop);
unit.parent = parent.player;
return unit;
