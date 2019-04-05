//DEATH
if global.php<1 instance_destroy();

//BLINKING

blink=blink-1;
if blink<1
{
	draw_sprite(txr_blink,-1,x,y);
	blinked=1;
};
if global.blinked=1 blk=blk-1;

if blk<1
{
	global.blinked=0;
	blk=21;
	blink=240;
	sprite_flush(txr_blink);
};

//MOVEMENT

if keyboard_check(ord("W")) y=y-10;
if keyboard_check(ord("S")) y=y+10;
if keyboard_check(ord("A")) x=x-10;
if keyboard_check(ord("D")) x=x+10;

image_angle=point_direction(x,y,mouse_x,mouse_y);

//INVENTORY

if keyboard_check_pressed(ord("1"))
{
	audio_play_sound(snd_equip_hg,1,0);
	g=1;
	hg=0;
	key=0;
}

if keyboard_check_pressed(ord("2"))
{
	audio_play_sound(snd_equip_hg,1,0);
	hg=1;
	g=0;
	key=0;
}

if keyboard_check_pressed(ord("3"))
{
	hg=0;
	g=0;
	key=1;
}

//SHOOTING

if mouse_check_button(mb_left)
{
	//P90
	if (g=1) && (gc<1) && (ga>0)
	{
		audio_play_sound(snd_hg_shot,1,0);
		audio_play_sound(snd_bullet_drop,1,0);
		instance_create_layer(x,y,"BulletLayer",obj_bullet_g);
		gc=4;
		ga=ga-1;
	}
	//Handgun
	if (hg=1) && (hgc<1) && (hga>0)
	{
		audio_play_sound(snd_hg_shot,1,0);
		audio_play_sound(snd_bullet_drop,1,0);
		instance_create_layer(x,y,"BulletLayer",obj_bullet_hg);
		hgc=40;
		hga=hga-1;
	}
	//Keycard
	if key=1
	{
		
	}
}
gc=gc-1;
hgc=hgc-1;

if (mouse_check_button_pressed(mb_left)) && (ga<1) && (g=1) audio_play_sound(snd_no_ammo_hg,1,0)
if (mouse_check_button_pressed(mb_left)) && (hga<1) && (hg=1) audio_play_sound(snd_no_ammo_hg,1,0)

if (keyboard_check_pressed(ord("R"))) && (g=1) 
{
	audio_play_sound(snd_g_reload,1,0)
	gc=200;
	ga=50;
}
if (keyboard_check_pressed(ord("R"))) && (hg=1) 
{
	audio_play_sound(snd_hg_reload,1,0)
	hgc=132;
	hga=12;
}

//SUICIDE

if (hg=1) && (hgc<1) && (hga>0) && (keyboard_check_pressed(ord("K")))
{
	audio_play_sound(snd_hg_shot,1,0);
	audio_play_sound(snd_bullet_drop,1,0);
	instance_destroy();
}