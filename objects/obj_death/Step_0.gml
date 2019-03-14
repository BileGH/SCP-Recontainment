if instance_exists(obj_player)
{
	x=obj_player.x;
	y=obj_player.y;
};

if global.dead=1
{
	if global.dead_p90=1 draw_sprite(txr_dead_p90,-1,x,y);
	
}