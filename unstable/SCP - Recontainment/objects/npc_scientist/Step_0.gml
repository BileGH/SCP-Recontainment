if hp<1 instance_destroy();

if instance_exists(obj_player) && follow=1
{
	move_towards_point(obj_player.x-500,obj_player.y,spd);
	image_angle=direction;
}