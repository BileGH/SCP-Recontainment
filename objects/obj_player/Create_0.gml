//WEAPONS
global.SCARMaxAmmo = 20
global.SCARReloadType = 1 //1 - FULL Reload.
global.SCARDamage = 26
global.SCARDamageDeviation = 3
global.SCARFireDelay = 10
global.SCARFireMode1 = 3 //3 - Auto; 2 - Burst; 1 - Single; Fire Modes.
global.SCARFireMode2 = 1
global.SCARFireMode3 = NaN
global.SCARAmmoType = 556

global.M1911MaxAmmo = 7
global.M1911ReloadType = 3
global.M1911Damage = 31
global.M1911DamageDeviation = 6
global.M1911FireDelay = 3
global.M1911FireMode1 = 1
global.M1911FireMode2 = NaN
global.M1911FireMode3 = NaN
global.M1911AmmoType = 45

//STATS
HP = 100; //Player Health
CurrentSpeed = 5; //Current speed
Stamina = 300;

//WEAPONS AND EQUIPS
Equip1 = "SCAR"
Equip2 = "M9"
Equipped = Equip1
FireMode = "global."+string(Equipped)+"FireMode1"

//AMMO
Ammo556 = 40
Ammo45 = 40

Mags556 = array_create(3, [30])
Mags45 = array_create(2, [7])

AmmoCurrentEquip = "global." + string(Equipped) + "AmmoType"
MagsCurrentEquip = "global." + string(Equipped) + "Ammo556"
//Stuff
step = 0; //Timer until you take a step
sc = 0; //

//BLINKING
Blinked = 0; //The state when you have blinked
blk = 30; //The time you stay with closed eyes, while blinking
blink = 600; //Timer until you blink
//HUD
draw_set_font(fnt_default);
draw_set_color(c_black);

Speed = 0.5
HowSlowerToSlowDown = 1.5
WalkingSpeed = 5
RunningSpeed = 12
StepSoundSpeed = 7
ToStepTimer = 25
ActualSpeed = Speed + HowSlowerToSlowDown
