/// @param _x
/// @param _y
/// @param text
/// @param halign
/// @param valign
var _x = argument0, _y = argument1, text = argument2, halign = argument3, valign = argument4;

var old_h = draw_get_halign();
var old_v = draw_get_valign();
var old_c = draw_get_colour();

draw_set_halign(halign);
draw_set_valign(valign);
draw_set_color(c_red);

draw_text_ext_transformed(_x, _y, text, 5, 500, 2, 2, 0);

draw_set_color(old_c);
draw_set_halign(old_h);
draw_set_valign(old_v);

