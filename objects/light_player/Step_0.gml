jif instance_exists(obj_player) {
	with (obj_player) {
		if canMove {
			other.light[| eLight.Direction] = point_direction(x,y,mouse_x,mouse_y)
			other.light[| eLight.X] = x
			other.light[| eLight.Y] = y
		
		
			other.light[| eLight.Flags] |= eLightFlags.Dirty;
			other.x = x
			other.y = y
		}
	}
}	