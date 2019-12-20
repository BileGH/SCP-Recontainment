if keyboard_check(ord("E"))
{
	//instance_create_layer(x,y,"BulletLayer",obj_body_bag)
	audio_play_sound(snd_body_bag_zipping,1,false)
	instance_destroy()
}