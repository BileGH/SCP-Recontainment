if HP<=0 instance_destroy();
MacroBleeding
MacroSoundEmittersPositionSet

moving=moving-1;

if instance_exists(obj_player) && stop=1 && drag=0 image_angle=point_direction(x,y,obj_player.x,obj_player.y);

wait=wait-1

if drag=1 && instance_exists(obj_player)
{
	x=obj_player.x+100
	y=obj_player.y
	image_angle=point_direction(x,y,obj_cursor.x,obj_cursor.y);
}