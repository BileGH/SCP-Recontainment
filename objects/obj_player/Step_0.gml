//SAVING
if keyboard_check(vk_f8) game_save("save")

if keyboard_check(vk_f9) game_load("save")

if keyboard_check(vk_escape) {
	game_save("save")
	room_goto(map_menu)
}

//DEATH

if HP < 1 instance_destroy();

//BLINKING

if keyboard_check(vk_lalt) blink = 0;

blink = blink - 1;

if blink < 1 {
	instance_create_layer(x, y, "Top_Layer", obj_blink)
	Blinked = 1;
};
if Blinked = 1 blk = blk - 1;

if blk < 1 {
	Blinked = 0;
	blk = 10;
	blink = 600;
	instance_destroy(obj_blink, true)
};

//MOVEMENT

CurrentSpeed = WalkingSpeed
if keyboard_check(vk_lshift) && Stamina > 0 {
	CurrentSpeed = RunningSpeed;
	Stamina = Stamina - 1;
	sc = 60;
}

sc = sc - 1;

if sc < 1 && Stamina < 301 Stamina = Stamina + 1;

MOVING = 0
if keyboard_check(ord("W")) {
	vspeed -= ActualSpeed;
	MOVING = 1
}
if keyboard_check(ord("S")) {
	vspeed += ActualSpeed;
	MOVING = 1
}
if keyboard_check(ord("A")) {
	hspeed -= ActualSpeed;
	MOVING = 1
}
if keyboard_check(ord("D")) {
	hspeed += ActualSpeed;
	MOVING = 1
}

if step < 1 {
	audio_sound_pitch(snd_mtf_walk, random_range(0.8, 1.2))
	audio_play_sound(snd_mtf_walk, 1, false)
	step = ToStepTimer
}

if speed > 0 {
	speed -= HowSlowerToSlowDown
	step -= speed / StepSoundSpeed
} else {
	speed = 0
}

if speed > CurrentSpeed {
	speed -= (speed - CurrentSpeed) / 2
}


image_angle = point_direction(x, y, mouse_x, mouse_y);

//INVENTORY

if keyboard_check_pressed(ord("1")) {
	Equipped = Equip1
}


if keyboard_check_pressed(ord("2")) {
	Equipped = Equip2
}

//SHOOTING AND RELOADING

if mouse_check_button(mb_left) {
	x -= 1;
}

if keyboard_check_pressed(ord("r")) {

}

//Keycard

//SUICIDE

//COLLISION


if collision_line(x, y, x, y + vspeed, obj_wall, 0, 0) {
	vspeed = 0 x = xprevious
}
if collision_line(x, y, x + hspeed, y, obj_wall, 0, 0) {
	hspeed = 0 y = yprevious
}

if collision_line(x, y, x, y + vspeed, obj_door, 1, 0) {
	vspeed = 0 x = xprevious
}
if collision_line(x, y, x + hspeed, y, obj_door, 1, 0) {
	hspeed = 0 y = yprevious
}
