CorpseName = obj_dead_body_player
MacroMakeBloodPuddlesAndCorpse

global.dead=1
instance_destroy(obj_blink);
instance_destroy(obj_static);
audio_stop_all()
audio_play_sound(snd_death_arg,10,true);