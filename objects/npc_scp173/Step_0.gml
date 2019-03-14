if obj_blink.blinked=1 && instance_exists(obj_player)
{
	move_towards_point(obj_player.x,obj_player.y,100)
	image_angle=directon;
}

blink=blink-1;
if blink<1
{
	blinked=1;
};
if blinked=1 blk=blk-1;

if blk<1
{
	blinked=0;
	blk=10;
	blink=240;
};

