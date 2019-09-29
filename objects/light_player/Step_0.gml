if instance_exists(obj_player) {
	light[| eLight.Direction] = point_direction(x,y,mouse_x,mouse_y)
	light[| eLight.X] = obj_player.x
	light[| eLight.Y] = obj_player.y
	light[| eLight.Flags] |= eLightFlags.Dirty;

	x = obj_player.x
	y = obj_player.y
}