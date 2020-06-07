/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param y1
/// @param y1
/// @param color
/// @param outline
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, color = argument4, outline = argument5;

var old_color = draw_get_colour();
draw_set_color(color);
draw_rectangle(x1, y1, x2, y2, outline);
draw_set_color(old_color);
