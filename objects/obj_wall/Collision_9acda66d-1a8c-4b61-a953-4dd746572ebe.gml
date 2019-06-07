with (other)
{
	if collision_point(x,y,obj_wall,0,0) {x=xprevious y=yprevious speed=0}
	if collision_line(x,y,x,y+vspeed,obj_wall,0,0) {vspeed=0}
	if collision_line(x,y,x+hspeed,y,obj_wall,0,0) {hspeed=0}
}