//SAVING

if keyboard_check(vk_f8) game_save("save")

if keyboard_check(vk_f9) game_load("save")

if keyboard_check(vk_escape)
{
	game_save("save")
	room_goto(map_menu)
}

//DEATH

if hp<1 instance_destroy();

//BLINKING

if keyboard_check (vk_lalt) blink=0;

blink=blink-1;

if blink<1
{
	instance_create_layer(x,y,"Top_Layer",obj_blink)
	global.blinked=1;
};
if global.blinked=1 blk=blk-1;

if blk<1
{
	global.blinked=0;
	blk=10;
	blink=600;
	instance_destroy(obj_blink,true)
};

//MOVEMENT

walk = WALKINGSPEED
if keyboard_check(vk_lshift) && sprint > 0 {
	walk = RUNNINGSPEED;
	sprint = sprint - 1;
	sc = 60;
}

sc = sc - 1;

if sc < 1 && sprint < 301 sprint = sprint + 1;

MOVING = 0
if keyboard_check(ord("W")) {
	vspeed -= ACTUALSPEED;
	MOVING = 1
}
if keyboard_check(ord("S")) {
	vspeed += ACTUALSPEED;
	MOVING = 1
}
if keyboard_check(ord("A")) {
	hspeed -= ACTUALSPEED;
	MOVING = 1
}
if keyboard_check(ord("D")) {
	hspeed += ACTUALSPEED;
	MOVING = 1
}

if step < 1 {
	audio_sound_pitch(snd_mtf_walk, random_range(0.8, 1.2))
	audio_play_sound(snd_mtf_walk, 1, false)
	step = TOSTEPTIMER
}

if speed > 0 {
	speed -= HOWSLOWERTOSLOWDOWN
	step -= speed / STEPSPEED
} else {
	speed = 0
}

if speed > walk {
	speed -= (speed-walk)/2
}


image_angle=point_direction(x,y,mouse_x,mouse_y);

/*INVENTORY

if keyboard_check_pressed(ord("1"))
{
	audio_play_sound(snd_equip_hg,1,0);
	g=1;
	hg=0;
	key=0;
}
*/

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
	if (g=1) && (COOLDOWNRIFLE<1) && (AMMORIFLE>0)
	{
		audio_play_sound(snd_hg_shot,1,0);
		audio_play_sound(snd_bullet_drop,1,0);
		instance_create_layer(x,y,"BulletLayer",obj_bullet);
		COOLDOWNRIFLE=4;
		AMMORIFLE=AMMORIFLE-1;
	}
	//Handgun
	if (hg=1) && (COOLDOWNHANDGUN<1) && (AMMOHANDGUN>0) && mouse_check_button_pressed(mb_left)
	{
		audio_play_sound(snd_hg_shot,1,0);
		audio_play_sound(snd_bullet_drop,1,0);
		instance_create_layer(x,y,"BulletLayer",obj_bullet);
		COOLDOWNHANDGUN=10;
		AMMOHANDGUN=AMMOHANDGUN-1;
	}
	//Keycard
	if key=1
	{
		
	}
}
COOLDOWNRIFLE=COOLDOWNRIFLE-1;
COOLDOWNHANDGUN=COOLDOWNHANDGUN-1;

if (mouse_check_button_pressed(mb_left)) && (AMMORIFLE<1) && (g=1) audio_play_sound(snd_no_ammo_hg,1,0)
if (mouse_check_button_pressed(mb_left)) && (AMMOHANDGUN<1) && (hg=1) audio_play_sound(snd_no_ammo_hg,1,0)

if (keyboard_check_pressed(ord("R"))) && (g=1) 
{
	audio_play_sound(snd_g_reload,1,0)
	COOLDOWNRIFLE=200;
	AMMORIFLE=50;
}
if (keyboard_check_pressed(ord("R"))) && (hg=1) 
{
	audio_play_sound(snd_hg_reload,1,0)
	COOLDOWNHANDGUN=132;
	AMMOHANDGUN=12;
}

//SUICIDE

if (hg=1) && (COOLDOWNHANDGUN<1) && (AMMOHANDGUN>0) && (keyboard_check_pressed(ord("K")))
{
	audio_play_sound(snd_hg_shot,1,0);
	audio_play_sound(snd_bullet_drop,1,0);
	instance_destroy();
}

//COLLISION


if collision_line(x, y, x, y + vspeed, obj_wall, 0, 0) {
	vspeed = 0 x=xprevious
}
if collision_line(x, y, x + hspeed, y, obj_wall, 0, 0) {
	hspeed = 0 y=yprevious
}

if collision_line(x, y, x, y + vspeed, obj_door, 1, 0) {
	vspeed = 0 x=xprevious
}
if collision_line(x, y, x + hspeed, y, obj_door, 1, 0) {
	hspeed = 0 y=yprevious
}