// Action handling

if instance_exists(obj_options) {
	canClick = false
} else {
	canClick = true
}

if (canClick) {
	with (btnPlay) {
		if triggered {
			triggered = false
			audio_stop_all()
			room_goto(rm_testroom)
			//if debug_mode {room_goto(map_test_room)} else {room_goto(map_game)}
		}
	}
	
	with (btnOptions) {
		if triggered {
			triggered = false
			if !instance_exists(obj_options) {
				instance_create_layer(room_width/2,room_height/2,"UI2",obj_options)
			}
		}
	}

	with (btnExit) {
		if triggered {
			triggered = false
			audio_stop_all()
			// TODO: Confirm window
			game_end()
		}
	}

}
if !audio_is_playing(snd_pc_startup) {
	if !audio_is_playing(snd_pc_loop2){
		audio_play_sound(snd_pc_loop2,0,false)
	}
}