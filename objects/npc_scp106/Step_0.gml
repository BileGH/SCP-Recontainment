if instance_exists(obj_player) move_towards_point(obj_player.x,obj_player.y,spd) else speed=0;

image_angle=direction;

spd=6;

if global.femur_broken=1 instance_destroy()