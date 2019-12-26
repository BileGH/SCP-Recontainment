#region Other code
// Spawn cursor
instance_create_layer(1,1,"UI",obj_cursor)

if !audio_is_playing(snd_game_music) {
	audio_play_sound(snd_game_music,0,true)
}

if (instance_number(obj_player) > 1) {instance_destroy(self)}

randomize();

#endregion

#region Variables
#region Timers
// Flash
flashTimer = 0;
flashTime = 2
interactionTimer = 0;
interactionTime = 10
#endregion
#region Movement
moving = false
canMove = true
running = false
#endregion
#region Binds
invOpenKey = vk_tab
interactKey = ord("E")
#endregion
#region Stats
hp = 100
stamina = 100
isAlive = true
#endregion
#region Other
firstStep = true
pause = false
blood = noone
#endregion
#endregion

#region Old Blinking
/*
//BLINKING
global.blinked = 0; //The state when you have blinked
blk = 6; //The time you stay with closed eyes, while blinking
blink = 600; //Timer until you blink
//HUD
draw_set_font(fnt_default);
draw_set_color(c_black);
*/
#endregion

#region Blinking
blinking = false
blinkTime = room_speed * 10
blinkTimer = blinkTime
eyesOpen = true
eyesSmoked = false
eyesSmokeTimer = 0
spriteObject = noone
#endregion

#region Visibility
#region NPC Visiblity Code Copy
canSee = true
sight173 = false

visibileEnts[0] = noone
#endregion
#endregion

#region Macros
//MACROS
#macro PlayFiringSound audio_emitter_falloff(SoundEmitter2, 2500, 8000, 1); audio_play_sound_on(SoundEmitter2,snd_hg_shot,0,1); audio_emitter_falloff(SoundEmitter, 300, 750, 1); audio_play_sound_on(SoundEmitter,snd_bullet_drop,0,1)
#endregion

#region Audio Systme
//AUDIO SYSTEM
audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_position(x,y,0)
audio_listener_orientation(0, 0, 10, 0, -1, 0);
#endregion

#region Old Weapon System (Commented Out)
/*
//WEAPONS

//AMMO
Ammo556 = 40
Ammo45 = 40

//Equipped variables which need constant updates

ToFire = 1
ToFireCount = 0
//AMMO
#macro SetMagsandAmmo Mags556 = ds_list_create() Mags45 = ds_list_create();
SetMagsandAmmo
ds_list_add(Mags556, 30, 30, 30) ds_list_add(Mags45, 7, 7, 7)

DSWeaponM1911 = ds_list_create();
ds_list_add(DSWeaponM1911, 7, 1, 26, 3, 8, 1, 0, 0, Ammo45, Mags45, 5, 0, 0, 0.1, txr_player_hg, 300, 0, snd_hg_shot, snd_equip_hg, snd_hg_reload)

DSWeaponSCAR = ds_list_create();
ds_list_add(DSWeaponSCAR, 30, 1, 26, 3, 6, 3, 1, 0, Ammo556, Mags556, 5, 0, 0, 0.1, txr_player_ScarL, 154, -12.6, snd_hg_shot, snd_equip_hg, snd_hg_reload)
/* !!Top-To-Bottom explanation of numbers and variables Left-To-Right!!
0 Max Ammo.
1 Reload Type. 1 - FULL Reload.
2 Damage.
3 Damage Deviation. Randomized part.
4 Fire Delay.
5 Fire Mode 1. 3 - Auto; 2 - Burst; 1 - Single; 0 - NONE.
6 Fire Mode 2.
7 Fire Mode 3.
8 Ammo Type.
9 Mags Type.
10 Current FireMode.
11 Current Magazine.
12 Current bullet in the chamber. 0 = None.
13 BleedingAmount 
14 What texture should be the player, when swapped to
15 X&Y Offset to the gun
16 Angle Offset to the gun
17 Sound for firing
18 Sound for Equipping
19 Sound for Reloading

//WEAPONS AND EQUIPS
Equip1 = DSWeaponSCAR
Equip2 = DSWeaponM1911
Equipped = Equip1

CurrentMagazine = string(Equipped[|9])
*/
#endregion

#region Interaction

interactTarget = noone
interactDistance = 360

#endregion

#region Inventory

canOpenInv = true
hasInvOpen = false
inventoryObj = noone
mxprev = 0
myprev = 0
inv[0] = "PLY" // Player Inventory Type
for (var i = 1; i < 15; ++i) {
    inv[i] = "empty"
}

var k = 0 
inv[++k] = "weapon_scar"
inv[++k] = "weapon_9mm"
inv[++k] = "paper_173"
inv[++k] = "paper_173"
inv[++k] = "paper_173"
inv[++k] = "paper_173"
inv[++k] = "paper_173"
inv[++k] = "empty"
inv[++k] = "empty"
inv[++k] = "empty"
inv[++k] = "empty"
inv[++k] = "empty"
inv[++k] = "empty"
inv[++k] = "empty"



#endregion

#region Hotbar
htbrsl = 1 // Hot Bar Selection
#endregion

#region Shooting
fireInterval = 4
fireTimer = 0
#endregion

#region Text Display
displayText = ""
textTime = 15
textTimer = textTime
#endregion