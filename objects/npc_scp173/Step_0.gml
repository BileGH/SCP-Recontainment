speed=0

if global.blinked=1 && instance_exists(obj_player)
{
	move_towards_point(obj_player.x,obj_player.y,50)
	image_angle=direction;
}

wait=wait-1

if wait<1 scare=0;