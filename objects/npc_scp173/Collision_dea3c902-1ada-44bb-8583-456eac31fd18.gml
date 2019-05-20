if global.blinked=1
{
	with(obj_player) instance_destroy();
	global.dead=1;
	global.dead_173=1;
}