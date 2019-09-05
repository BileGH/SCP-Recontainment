if HP<=0 instance_destroy();
MacroBleeding
MacroSoundEmittersPositionSet

if stop=0 && moving<1
{
	dir=random_range(1,4)
	
	if dir=1 move_towards_point(x+100,y,spd)
	
	if dir=2 move_towards_point(x-100,y,spd)
	
	if dir=3 move_towards_point(x,y+100,spd)
	
	if dir=4 move_towards_point(x,y-100,spd)
	
	moving=60;
}

moving=moving-1;

if instance_exists(obj_player) && stop=1 && drag=0 image_angle=point_direction(x,y,obj_player.x,obj_player.y);

wait=wait-1

if drag=1 && instance_exists(obj_player)
{
	x=obj_player.x+100
	y=obj_player.y
	image_angle=point_direction(x,y,obj_cursor.x,obj_cursor.y);
}