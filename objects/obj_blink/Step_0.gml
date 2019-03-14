if instance_exists(obj_player)
{
	x=obj_player.x;
	y=obj_player.y;
}

blink=blink-1;
if blink<1
{
	image_alpha=1;
	blinked=1;
};
if blinked=1 blk=blk-1;

if blk<1
{
	blinked=0;
	blk=10;
	blink=240;
	image_alpha=0;
};