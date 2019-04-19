if global.blinked=1 && instance_exists(obj_player)
{
	move_towards_point(obj_player.x,obj_player.y,100)
	image_angle=direction;
}