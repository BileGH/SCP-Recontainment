// Action handling

with (btnPlay) {
	if triggered {
		triggered = false
		audio_stop_all()
		room_goto(rm_testroom)
		//if global.debug_Mode {room_goto(map_test_room)} else {room_goto(map_game)}
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

if !audio_is_playing(snd_pc_startup) {
	if !audio_is_playing(snd_pc_loop2){
		audio_play_sound(snd_pc_loop2,0,false)
	}
}