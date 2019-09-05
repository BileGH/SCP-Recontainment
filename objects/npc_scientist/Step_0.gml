if HP<1 instance_destroy();
MacroBleeding
MacroSoundEmittersPositionSet

if instance_exists(obj_player) && follow=1
{
	move_towards_point(obj_player.x-500,obj_player.y,spd);
	image_angle=direction;
}

if follow=0 && wait<1
{
	speed=0
	image_angle=direction;
}

wait-=1