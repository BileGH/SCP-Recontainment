if (loading) {
	if (loadStage >= (finalStage + 1)) {
		// Done loading
		room = rm_menu
	} else {
		// Do loading stuff.
		
		if (loadStage > 0) {
			if !audio_is_playing(snd_pc_startup) {
				if !audio_is_playing(snd_pc_loop1) {
					audio_play_sound(snd_pc_loop1,0,false)
				}
			}
		}
		
		switch (loadStage) {
			case 0:
			#region Loading0 // Loading INIT
			loadText = localization("loading0")
			audio_play_sound(snd_pc_startup,0,false)
			loadStage += 1
			#endregion
			break
			
			case 1:
			#region Loading1 // Graphic Options
			loadText = localization("loading1")
			options_load()
			loadStage += 1
			#endregion	
			break
			
			case 2:
			#region Loading2
			loadText = localization("loading2")
			loadStage += 1
			#endregion
			break
			
			case 3:
			#region Loading3 // Mod Assets
			loadText = localization("loading3")
			loadStage += 1
			#endregion
			break
			
			case 4:
			#region Loading4 // Finishing stuff
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