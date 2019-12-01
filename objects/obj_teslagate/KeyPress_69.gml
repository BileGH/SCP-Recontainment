// Tesla gate disable / enable

if (instance_nearest(obj_player.x,obj_player.y, obj_teslagate).id = id) {
	if plyIsWithinInteractionDistance {
		if (activationTimer <= 0) {
			if (activationState == 0) {
				activationTimer = room_speed * 8
				activationState = 1
				if (active) {audio_play_sound(q_player_tesla0,2,false)}
			}
		}
	}
}