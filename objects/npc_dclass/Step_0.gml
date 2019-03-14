if hp<1 instance_destroy();

if instance_exists(obj_player) && stop=0 && moving<1
{
	dir=random_range(1,4)
	
	image_angle=direction
	
	if dir=1 move_towards_point(x+100,y,spd)
	
	if dir=2 move_towards_point(x-100,y,spd)
	
	if dir=3 move_towards_point(x,y+100,spd)
	
	if dir=4 move_towards_point(x,y-100,spd)
	
	moving=600;
}

moving=moving-1;

if instance_exists(obj_player) && stop=1 image_angle=point_direction(x,y,obj_player.x,obj_player.y);