//STATS
HP = 100; //Player Health
CurrentSpeed = 6; //Current speed
Stamina = 300;
global.femur_broken=0


//Stuff
step = 0; //Timer until you take a step
sc = 0; //

canMove = true

#region Blinking
//BLINKING
global.blinked = 0; //The state when you have blinked
blk = 6; //The time you stay with closed eyes, while blinking
blink = 600; //Timer until you blink
//HUD
draw_set_font(fnt_default);
draw_set_color(c_black);

#endregion

Speed = 0.5
HowSlowerToSlowDown = 1.5
WalkingSpeed = 6
RunningSpeed = 12
StepSoundSpeed = 11
ToStepTimer = 25
ActualSpeed = Speed + HowSlowerToSlowDown

#region Macros
//MACROS
#macro MacroFireEquippedWeapon var Bullet = instance_create_layer(x+lengthdir_x(Equipped[|15],image_angle+Equipped[|16]), y+lengthdir_y(Equipped[|15],image_angle+Equipped[|16]), "BulletLayer", obj_bullet) with(Bullet) {Damage = other.Equipped[| 2] + random_range(-other.Equipped[| 3], other.Equipped[| 3]) image_angle = other.image_angle Owner = other.id }

#macro MacroBloodPuddles HowManyBloodPuddles = 3 HowFarOutBloodPuddles = 6;
#macro MacroMakeBloodPuddlesAndCorpse var Corpse = instance_create_layer(x,y,"BulletLayer",CorpseName) with Corpse {image_angle=random_range(other.image_angle-10,other.image_angle+10)}for (i = HowManyBloodPuddles; i > 1; i -= 1) {instance_create_layer(x + random_range(-HowFarOutBloodPuddles, HowFarOutBloodPuddles), y + random_range(-HowFarOutBloodPuddles, HowFarOutBloodPuddles), "Bottom_Layer", obj_blood_puddle);}

#macro MacroBleedingStatus Bleeding = 0 BleedingNaturalHealing = 0.00001 ToBloodDrip = 0.5 ToReBloodDrip = 0.5

#macro MacroSoundEmitters SoundEmitter = audio_emitter_create(); audio_emitter_position(SoundEmitter, x, y, 0) audio_emitter_pitch(SoundEmitter, random_range(0.8, 1.2)); SoundEmitter2 = audio_emitter_create(); audio_emitter_position(SoundEmitter2, x, y, 0) audio_emitter_pitch(SoundEmitter2, random_range(0.8, 1.2)); SoundEmitter3 = audio_emitter_create(); audio_emitter_position(SoundEmitter3, x, y, 0) audio_emitter_pitch(SoundEmitter3, random_range(0.8, 1.2)); SoundEmitter4 = audio_emitter_create(); audio_emitter_position(SoundEmitter4, x, y, 0) audio_emitter_pitch(SoundEmitter4, random_range(0.8, 1.2)); audio_stop_all()

#macro MacroSoundEmittersPositionSet audio_emitter_position(SoundEmitter, x, y, 0) audio_emitter_position(SoundEmitter2, x, y, 0) audio_emitter_position(SoundEmitter3, x, y, 0) audio_emitter_position(SoundEmitter4, x, y, 0)
//MARO OF ALL MACROS
#macro MacroPlayerNPCMaster MacroSoundEmitters MacroBleedingStatus MacroBloodPuddles
MacroPlayerNPCMaster

#endregion

//AUDIO SYSTEM
audio_falloff_set_model(audio_falloff_linear_distance);
audio_listener_position(x,y,0)
audio_listener_orientation(0, 0, 10, 0, -1, 0);

//DEBUG
global.Debug_Mode=debug_mode

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

#region Inventory

#endregion

#region Weapon System 2
// New Weapon System




#endregion


//AI
Followed = 1

// Flash
flashTimer = 0;
flashTime = 2

// Spawn debug console
instance_create_depth(0,0,0,obj_console)
