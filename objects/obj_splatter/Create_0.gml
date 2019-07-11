/*
if global.wall=1 object_set_sprite(obj_splatter,txr_csplatter)

if global.flesh=1 object_set_sprite(obj_splatter,txr_bsplatter)
*/

if instance_exists(obj_player) point_direction(x,y,obj_player.x,obj_player.y)

destroy=image_number