if instance_exists(obj_player) {
	paused = obj_player.pause
}

if !paused {
	image_angle = direction
	var spd = 256
	var collision = collision_line(x,y,x+lengthdir_x(spd,direction),y+lengthdir_y(spd,direction),obj_wall,false,false)
	if (collision == noone) {
		x = x + lengthdir_x(spd,direction)
		y = y + lengthdir_y(spd,direction)
	} else {
		instance_destroy(self)
		// TODO: Finish
		//with (collision) {
			//if (object_index == npc_base) {
			
			//}
		//}
	}
}