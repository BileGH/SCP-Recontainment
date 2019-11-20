if (flashTimer > 0) {--flashTimer}

//SAVING
if keyboard_check(vk_f8) game_save("save")

if keyboard_check(vk_f9) game_load("save")

if (global.Debug_Mode) {
	if keyboard_check(ord("P")) {x = mouse_x; y = mouse_y}
}
if keyboard_check(vk_escape) {
	game_save("save")
	room_goto(map_menu)
}

//DEATH

if HP <= 0 instance_destroy();

//BLINKING

if keyboard_check(vk_lalt) {
	blk = 3 blink = 0
}

blink = blink - 1;

if blink < 1 {
	instance_create_layer(x, y, "Top_Layer", obj_blink)
	global.blinked = 1;
};
if global.blinked = 1 blk = blk - 1;

if blk < 1 {
	global.blinked = 0;
	blk = 10;
	blink = 600;
	instance_destroy(obj_blink, true)
};

//MOVEMENT

CurrentSpeed = WalkingSpeed
if keyboard_check(vk_lshift) && Stamina > 0 {
	CurrentSpeed = RunningSpeed;
	Stamina -= 1;
	sc = 60;
	StepSoundSpeed = 10
} else {
	StepSoundSpeed = 11
}

sc = sc - 1;

if sc < 1 && Stamina < 300 {Stamina = Stamina + 1};

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
			audio_emitter_falloff(SoundEmitter, 300, 750, 1);
			audio_play_sound_on(SoundEmitter,snd_mtf_walk,0,1)
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
/*
if keyboard_check_pressed(ord("1")) {
	if Equipped != Equip1 {
		audio_stop_sound(snd_equip_hg)
		audio_play_sound(snd_equip_hg, 1, 0)
	}
	Equipped = Equip1
	sprite_index = string(Equipped[|14])
	CurrentMagazine = string(Equipped[|9])
}


if keyboard_check_pressed(ord("2")) {
	if Equipped != Equip2 {
		audio_stop_sound(snd_equip_hg)
		audio_play_sound(snd_equip_hg, 1, 0)
	}
	Equipped = Equip2
	sprite_index = string(Equipped[|14])
	CurrentMagazine = string(Equipped[|9])
}


//SHOOTING AND RELOADING
	//Auto and Burst Firing.
if mouse_check_button(mb_left) {
	if Equipped[| Equipped[| 10]] = 3 {
		if Equipped[| 12] = 1 {
			audio_emitter_falloff(SoundEmitter2, 2500, 8000, 1);
			audio_play_sound_on(SoundEmitter2,snd_hg_shot,0,1)
			audio_emitter_falloff(SoundEmitter, 300, 750, 1);
			audio_play_sound_on(SoundEmitter,snd_bullet_drop,0,1)
			ToFire = 0
			ToFireCount = Equipped[| 4]
			Equipped[| 12] = 0
			MacroFireEquippedWeapon
			flashTimer = flashTime
			
		}
	}
	if Equipped[| Equipped[| 10]] = 2 {
		for (i = 3; i > 0; i -= 1) {
			if Equipped[| 12] = 1 {
				audio_emitter_falloff(SoundEmitter2, 2500, 8000, 1);
				audio_play_sound_on(SoundEmitter2,snd_hg_shot,0,1)
				audio_emitter_falloff(SoundEmitter, 300, 750, 1);
				audio_play_sound_on(SoundEmitter,snd_bullet_drop,0,1)
				ToFire = 0
				ToFireCount = Equipped[| 4]
				Equipped[| 12] = 0
				MacroFireEquippedWeapon
				flashTimer = flashTime
			}
		}
	}
}
	//Single (1) FireMode Firing.
if mouse_check_button_pressed(mb_left) {
	if Equipped[| Equipped[| 10]] = 1 {
		if Equipped[| 12] = 1 {
			audio_emitter_falloff(SoundEmitter2, 2500, 8000, 1);
			audio_play_sound_on(SoundEmitter2,snd_hg_shot,0,1)
			audio_emitter_falloff(SoundEmitter, 300, 750, 1);
			audio_play_sound_on(SoundEmitter,snd_bullet_drop,0,1)
			ToFire = 0
			ToFireCount = Equipped[| 4]
			Equipped[| 12] = 0
			MacroFireEquippedWeapon
			flashTimer = flashTime
		}
	}
}

	//Reloading.
if keyboard_check_pressed(ord("R")) {
	if Equipped[| 11] = ds_list_size(Equipped[|9]) - 1 {
		Equipped[| 11] = 0
		audio_stop_sound(snd_hg_reload)
		audio_play_sound(snd_hg_reload, 1, 0)
	}
	else {
		Equipped[| 11] += 1
		audio_stop_sound(snd_hg_reload)
		audio_play_sound(snd_hg_reload, 1, 0)
	}
}

	//Loading Ammo into the Magazine.
if keyboard_check(ord("T")) {
	if Equipped[| 8] > 0 and CurrentMagazine[|Equipped[|11]]< Equipped[| 0] {
		CurrentMagazine[|Equipped[|11]] += 1
		Equipped[| 8] -= 1
	}
}

//Changing FireMode
//MAKE THIS SHIT. REEEEEEEEEEEEE


//Loading a Bullet into the Chamber.
if ToFireCount > 0 {
	ToFireCount -= 1
} else {
	if Equipped[| 12] = 0 and CurrentMagazine[|Equipped[|11]]> 0 {
		Equipped[| 12] = 1
		CurrentMagazine[|Equipped[|11]] -= 1
	}
}

*/

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

//BLEEDING
#macro MacroBleeding if Bleeding>0 {Bleeding -= BleedingNaturalHealing ToBloodDrip-=Bleeding HP-=Bleeding  if ToBloodDrip<=0 {var Blood = instance_create_layer(x+random_range(-10,10), y+random_range(-10,10), "Bottom_Layer" , obj_blood_drip) ToBloodDrip=ToReBloodDrip with (Blood) {image_xscale=1+(other.Bleeding*32) image_yscale=1+(other.Bleeding*32)}}};
MacroBleeding

//AUDIO SYSTEM
if speed > 0
   {
	audio_listener_position(x,y,0)
   }
audio_listener_velocity(abs(hspeed),abs(vspeed),0)

MacroSoundEmittersPositionSet

//DEBUG
if keyboard_check(ord("K"))
and keyboard_check_pressed(ord("O")) {
	if global.Debug_Mode = 0 {
		global.Debug_Mode = 1
	} else {
		global.Debug_Mode = 0
	}
}

if keyboard_check(ord("P")) and global.Debug_Mode {instance_place(mouse_x,mouse_y,self)}