if rage=1 && scream=1
{
	audio_play_sound(snd_scp096_scream,1,0)
	scream=0
}

if rage=1 wait=wait-1

if wait<1
{
	instance_create_layer(x,y,"Instances",npc_scp096_rage)
	instance_destroy()
}