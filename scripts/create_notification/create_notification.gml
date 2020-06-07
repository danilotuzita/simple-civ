/// @param text
/// @param timeout
var text = argument0, timeout = argument1;

var notification = instance_create_layer(0, 0, "Instances", obj_notification);
notification.text = text;
notification.alarm[0] = timeout * room_speed;
notification.activated = true;
return notification;
