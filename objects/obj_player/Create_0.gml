//STATS
HP = 100; //Player Health
CurrentSpeed = 6; //Current speed
Stamina = 300;
global.femur_broken=0

//AMMO
Ammo556 = 40
Ammo45 = 40

//Equipped variables which need constant updates

ToFire = 1
ToFireCount = 0

//Stuff
step = 0; //Timer until you take a step
sc = 0; //

//BLINKING
global.blinked = 0; //The state when you have blinked
blk = 6; //The time you stay with closed eyes, while blinking
blink = 600; //Timer until you blink
//HUD
draw_set_font(fnt_default);
draw_set_color(c_black);

Speed = 0.5
HowSlowerToSlowDown = 1.5
WalkingSpeed = 6
RunningSpeed = 12
StepSoundSpeed = 11
ToStepTimer = 25
ActualSpeed = Speed + HowSlowerToSlowDown

global.DebugInfo=debug_mode

//BLOOD PUDDLES
#macro BloodPuddles HowManyBloodPuddles = 3 HowFarOutBloodPuddles = 6;
BloodPuddles

//BlEEDING
#macro MacroBleedingStatus Bleeding = 0 BleedingNaturalHealing = 0.00001 ToBloodDrip = 0.5 ToReBloodDrip = 0.5
MacroBleedingStatus
//WEAPONS
	//AMMO
#macro SetMagsandAmmo Mags556 = ds_list_create() Mags45 = ds_list_create();
SetMagsandAmmo
ds_list_add(Mags556, 30, 30, 30) ds_list_add(Mags45, 7, 7, 7)

DSWeaponM1911 = ds_list_create();
ds_list_add(DSWeaponM1911, 7, 1, 26, 3, 8, 1, 0, 0, Ammo45, Mags45, 5, 0, 0, 0.1)

DSWeaponSCAR = ds_list_create();
ds_list_add(DSWeaponSCAR, 30, 1, 26, 3, 6, 3, 1, 0, Ammo556, Mags556, 5, 0, 0, 0.1)
/* !!Top-To-Bottom explanation of numbers and variables Left-To-Right!!
Max Ammo.
Reload Type. 1 - FULL Reload.
Damage.
Damage Deviation. Randomized part.
Fire Delay.
Fire Mode 1. 3 - Auto; 2 - Burst; 1 - Single; 0 - NONE.
Fire Mode 2.
Fire Mode 3.
Ammo Type.
Mags Type.
Current FireMode.
Current Magazine.
Current bullet in the chamber. 0 = None.
BleedingAmount 
*/



//WEAPONS AND EQUIPS
Equip1 = DSWeaponSCAR
Equip2 = DSWeaponM1911
Equipped = Equip1

CurrentMagazine = string(Equipped[|9])