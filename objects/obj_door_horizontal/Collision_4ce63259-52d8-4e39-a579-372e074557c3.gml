if keyboard_check_released(ord("E")) && open=0 && wait<1
{
	open=1
	show_debug_message("door open")
	audio_play_sound(snd_door,1,false)
	wait=60
	object_set_sprite(obj_door_horizontal,txr_door_vertical_open)
}

if keyboard_check_released(ord("E")) && open=1 && wait<1
{
	open=0
	show_debug_message("door closed")
	audio_play_sound(snd_door,1,false)
	wait=60
	object_set_sprite(obj_door_horizontal,txr_door_vertical_closed)
}