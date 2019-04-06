if keyboard_check_released(ord("E")) && open=0
{
	open=1
	audio_play_sound(snd_door,1,false)
}
if keyboard_check_released(ord("E")) && open=1
{
	open=0
	audio_play_sound(snd_door,1,false)
}