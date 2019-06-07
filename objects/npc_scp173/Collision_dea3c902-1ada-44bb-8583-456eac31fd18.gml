if global.blinked=1
{
	with (other) instance_destroy();
	global.dead=1;
	global.dead_173=1;
}

if keyboard_check(ord("E"))
{
	instance_create_layer(x,y,"Instances",obj_scp173_cage)
	instance_destroy()
}