instance_create_layer(x,y,"BulletLayer",obj_dead_body_player);
global.dead=1
instance_create_layer(x,y,"Bottom_Layer",obj_blood_puddle);
instance_destroy(obj_blink);
instance_destroy(obj_static);
audio_stop_all()
audio_play_sound(snd_death_arg,10,true);