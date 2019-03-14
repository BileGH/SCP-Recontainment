if global.body_type>0
{
	if global.body_type=1 object_set_sprite(obj_dead_body,txr_player_dead);

	if global.body_type=2 object_set_sprite(obj_dead_body,txr_scientist_dead);

	if global.body_type=3 object_set_sprite(obj_dead_body,txr_dclass_dead);

	global.body_type=0;
}