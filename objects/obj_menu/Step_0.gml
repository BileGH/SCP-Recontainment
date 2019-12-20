// Action handling

with (btnPlay) {
	if triggered {
		triggered = false
		
		room_goto(rm_testroom)
		//if global.debug_Mode {room_goto(map_test_room)} else {room_goto(map_game)}
	}
}

with (btnExit) {
	if triggered {
		triggered = false
		
		// TODO: Confirm window
		game_end()
	}
}