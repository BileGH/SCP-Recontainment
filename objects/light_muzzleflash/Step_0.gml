
if instance_exists(obj_player) {
	// Follow the player with the light position.
	light[| eLight.X] = obj_player.x
	light[| eLight.Y] = obj_player.y

	// Match intensity with the timer.
	if (obj_player.flashTimer > 0) {
		light[| eLight.Intensity] = (obj_player.flashTimer * 0.5)
		light[| eLight.Flags] |= eLightFlags.Dirty;
	} else {
		light[| eLight.Intensity] = 0
	}
	
	// Follow the player with the object.
	x = obj_player.x
	y = obj_player.y
}