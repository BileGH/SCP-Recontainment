if firstStep {
	
}


if (alarmTimer > 0) {--alarmTimer}

//light[| eLight.Intensity] = (alarmTimer / 40)



if (alarmTimer <= 0) {
	//replay sound
	if (alarmSound != noone) {
		if !audio_is_playing(alarmSound) {
			audio_play_sound_at(alarmSound,x,y,0,512,1280,1,false,1)
		}
	}
	alarmTimer = room_speed * alarmTime
	//light[| eLight.X] = posx
	//light[| eLight.Y] = posy

}

//light[| eLight.Flags] |= eLightFlags.Dirty