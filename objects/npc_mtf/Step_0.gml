if HP<1 instance_destroy();
MacroBleeding
MacroSoundEmittersPositionSet

speed=0

if instance_exists(obj_player) image_angle=point_direction(x,y,mouse_x,mouse_y);

if follow=0 speed=0

if instance_exists(obj_player) && follow=1 && CalculatePath<=0 && point_distance(x,y,obj_player.x,obj_player.y)
{
	if mp_grid_path(global.MPGrid, Path, x, y, obj_player.x, obj_player.y, 1)
        {
        path_start(Path, spd, 0, 0);
        }
	CalculatePath=irandom_range(80,120)
}
else
{
	spd = 9
	CalculatePath-=1
}

if mouse_check_button(mb_left) && (gc<1) && (ga>0) && (instance_exists(obj_player))
	{
	audio_emitter_falloff(SoundEmitter2, 2500, 8000, 1);
	audio_play_sound_on(SoundEmitter2,snd_hg_shot,0,1)
	audio_emitter_falloff(SoundEmitter, 300, 750, 1);
	audio_play_sound_on(SoundEmitter,snd_bullet_drop,0,1)
		var Bullet = instance_create_layer(x,y,"BulletLayer",obj_bullet);
		with (Bullet) {image_angle = other.image_angle Damage = other.Damage Owner = other.id}
		gc=10;
		ga=ga-1;
	}

gc=gc-1;

if (ga<1)
{
	audio_play_sound(snd_hg_reload,1,0)
	gc=132;
	ga=12;
}

wait=wait-1

MacroSoundEmittersPositionSet