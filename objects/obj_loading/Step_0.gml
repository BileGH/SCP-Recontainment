if (loading) {
	if (loadStage >= (finalStage + 1)) {
		// Done loading
		room = rm_menu
	} else {
		// Do loading stuff.
		switch (loadStage) {
			case 0:
			#region Loading0
			loadText = localization("loading0")
			audio_play_sound(snd_pc_startup,0,false)
			loadStage += 1
			#endregion
			break
			
			case 1:
			#region Loading1
			loadText = localization("loading1")
			if !audio_is_playing(snd_pc_startup) {
				audio_play_sound(choose(snd_pc_loop1,snd_pc_loop2),0,true)
				loadStage += 1
			}
			#endregion	
			break
			
			case 2:
			#region Loading2
			loadText = localization("loading2")
			loadStage += 1
			#endregion
			break
			
			case 3:
			#region Loading3
			loadText = localization("loading3")
			loadStage += 1
			#endregion
			break
			
			case 4:
			#region Loading4
			loadText = localization("loading4")
			loading = false
			loadStage = 0
			#endregion
			break
		}
	}
} else {
	room = rm_menu
}