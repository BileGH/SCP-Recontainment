if instance_exists(obj_player) {
	paused = obj_player.pause
}

if !paused {
	if (thinkTimer <= 0) {
		thinking = true
		thinkTimer = thinkTime
	} else {
		thinkTimer--
	}
}