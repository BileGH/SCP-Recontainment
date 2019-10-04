if (alarmTimer > 0) {--alarmTimer}

light[| eLight.Intensity] = (alarmTimer / 40)
light[| eLight.Flags] |= eLightFlags.Dirty


if (alarmTimer <= 0) {
	//replay sound
	alarmTimer = room_speed * alarmTime
	light[| eLight.X] = posx
	light[| eLight.Y] = posy
	light[| eLight.Flags] |= eLightFlags.Dirty
	light[| eLightFlags.CastsShadows] = false
}