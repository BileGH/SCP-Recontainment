if hp<1 instance_destroy();

if instance_exists(obj_player) && stop=0
{
	
}

if instance_exists(obj_player) && stop=1 image_angle=point_direction(x,y,obj_player.x,obj_player.y);