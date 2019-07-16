//WEAPONS
global.DSWeaponSCAR = ds_list_create();
ds_list_add(global.DSWeaponSCAR, 30, 1, 26, 3, 6, 3, 1, 0, 556, 556)
DSSCAR[1] = 30 //Max Ammo.
DSSCAR[2] = 1 //Reload Type. 1 - FULL Reload.
DSSCAR[3] = 26 //Damage.
DSSCAR[4] = 3 //Damage Deviation. Randomized part.
DSSCAR[5] = 10 //Fire Delay.
DSSCAR[6] = 3 // Fire Mode 1. 3 - Auto; 2 - Burst; 1 - Single; 0 - NONE.
DSSCAR[7] = 1 //Fire Mode 2.
DSSCAR[8] = 0 //Fire Mode 3.
DSSCAR[9] = 556 //Ammo Type.
DSSCAR[10] = 556 //Mags Type.
global.DSWeaponM1911 = ds_list_create();
ds_list_add(global.DSWeaponM1911, 20, 1, 26, 3, 3, 1, 0, 0, 45, 45)

//STATS
HP = 100; //Player Health
CurrentSpeed = 6; //Current speed
Stamina = 300;

//WEAPONS AND EQUIPS
Equip1 = global.DSWeaponSCAR
Equip2 = global.DSWeaponM1911
Equipped = Equip1

//AMMO
Ammo556 = 40
Ammo45 = 40

Mags556 = ds_list_create();
ds_list_add(Mags556, 30, 30, 30)
Mags45 = ds_list_create();
ds_list_add(Mags45, 7, 7, 7)

//Equipped variables which need constant updates
FireMode = Equipped[|5]

AmmoLoaded = 0
ToFire = 1
ToFireCount = 0

MagEquip1 = Mags556
MagEquip1Current = 0

//Stuff
step = 0; //Timer until you take a step
sc = 0; //

//BLINKING
Blinked = 0; //The state when you have blinked
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

if debug_mode global.DebugInfo = 1