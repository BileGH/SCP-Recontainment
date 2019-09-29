if instance_exists(obj_player) {
	light[| eLight.X] = obj_player.x
	light[| eLight.Y] = obj_player.y

	if (obj_player.flashTimer > 0) {
		light[| eLight.Intensity] = (obj_player.flashTimer * 0.5)
		light[| eLight.Flags] |= eLightFlags.Dirty;
	}
	
	x = obj_player.x
	y = obj_player.y
}