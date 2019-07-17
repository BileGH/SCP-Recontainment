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

if keyboard_check(vk_lalt) {
	blk = 3 blink = 0
}

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
	StepSoundSpeed = 10
} else {
	StepSoundSpeed = 11
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
		if string(Equipped[|10]) = 3 {
			if AmmoLoaded = 1 {
				audio_play_sound(snd_hg_shot, 1, 0);
				audio_play_sound(snd_bullet_drop, 1, 0);
				ToFire = 0
				ToFireCount = Equipped[| 4]
				AmmoLoaded = 0
				var Bullet = instance_create_layer(x, y, "BulletLayer", obj_bullet) with(Bullet) {
					Damage = other.Equipped[| 2] + random_range(-other.Equipped[| 3], other.Equipped[| 3])
					image_angle = other.image_angle Owner = other.id
				}
			}
		}
		if string(Equipped[|10]) = 2 {
			for (i = 3; i > 0; i -= 1) {
				if AmmoLoaded = 1 {
					audio_play_sound(snd_hg_shot, 1, 0);
					audio_play_sound(snd_bullet_drop, 1, 0);
					ToFire = 0
					ToFireCount = Equipped[| 4]
					AmmoLoaded = 0
					var Bullet = instance_create_layer(x, y, "BulletLayer", obj_bullet) with(Bullet) {
						Damage = other.Equipped[| 2] + random_range(-other.Equipped[| 3], other.Equipped[| 3])
						image_angle = other.image_angle Owner = other.id
					}
				}
			}
		}
}

if mouse_check_button_pressed(mb_left) {
	if Equipped[| 10] = 1 {
		if AmmoLoaded = 1 {
			audio_play_sound(snd_hg_shot, 1, 0);
			audio_play_sound(snd_bullet_drop, 1, 0);
			ToFire = 0
			ToFireCount = Equipped[| 4]
			AmmoLoaded = 0
			var Bullet = instance_create_layer(x, y, "BulletLayer", obj_bullet) with(Bullet) {
				Damage = other.Equipped[| 2] + random_range(-other.Equipped[| 3], other.Equipped[| 3])
				image_angle = other.image_angle Owner = other.id
			}
		}
	}
}

		
if keyboard_check_pressed(ord("R")) {
	if Equipped[|11] = ds_list_size(string(Equipped[|9])) - 1 {
		Equipped[|11] = 0
	}
	else {
		Equipped[|11] += 1
		audio_play_sound(snd_hg_reload,1,0)
	}
}

if keyboard_check_pressed(ord("T")) {
	if Ammo556 > 0 and Equipped[|9]+"["|Equipped[|11]+"]" < Equipped[| 0] {
		a += 1
		Ammo556 -= 1
	}
}
if ToFireCount > 0 {
	ToFireCount -= 1
} else {
	var i = Equipped[|9]
	if AmmoLoaded = 0 and string(i[Equipped[|11]]) > 0 {
		AmmoLoaded = 1
		a -= 1
	}
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

if keyboard_check(ord("K"))
and keyboard_check_pressed(ord("O")) {
	if global.DebugInfo = 0 {
		global.DebugInfo = 1
	} else {
		global.DebugInfo = 0
	}
}
