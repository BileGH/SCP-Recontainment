if hp<1 instance_destroy();

if instance_exists(obj_player) image_angle=point_direction(x,y,mouse_x,mouse_y);

if follow=0 move_towards_point(x,y,0)

if instance_exists(obj_player) && follow=1
{
	move_towards_point(obj_player.x,obj_player.y+500,spd);
}

if mouse_check_button(mb_left) && (gc<1) && (ga>0) && (instance_exists(obj_player))
	{
		audio_play_sound(snd_hg_shot,1,0);
		audio_play_sound(snd_bullet_drop,1,0);
		instance_create_layer(x,y,"BulletLayer",obj_bullet_g);
		gc=4;
		ga=ga-1;
	}
	
gc=gc-1;

if (ga<1)
{
	audio_play_sound(snd_g_reload,1,0)
	gc=200;
	ga=50;
}

wait=wait-1