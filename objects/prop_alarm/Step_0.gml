if (alarmTimer > 0) {--alarmTimer}

light[| eLight.Intensity] = (alarmTimer / 40)
light[| eLight.Flags] |= eLightFlags.Dirty


if (alarmTimer <= 0) {
	//replay sound
	if !audio_is_playing(snd_alarm) {
		if (alarmSound != noone) {
			audio_play_sound(alarmSound,1,false)
		}
	}
	
	alarmTimer = room_speed * alarmTime
	light[| eLight.X] = posx
	light[| eLight.Y] = posy

}