//STATS
HP=100; //Player Health
walk=5; //Current speed
sprint=300;
//INVENTORY
g=0; //Rifle gun
hg=1; //Handgun gun
key=0; //Keycard, probably
//COOLDOWN
CooldownRifle=120; //Delay to shoot from rifle gun
CooldownHandgun=120; //Delay to shoot from handgun gun
step=0; //Timer until you take a step
sc=0; //
//AMMO
AmmoRifle=50; //Rifle gun ammo
AmmoHandgun=15; //Handgun gun ammo
//BLINKING
global.blinked=0; //The state when you have blinked
blk=30; //The time you stay with closed eyes, while blinking
blink=600; //Timer until you blink
//HUD
draw_set_font(fnt_default);
draw_set_color(c_black);

SPEED = 0.5
HOWSLOWERTOSLOWDOWN=1.5
WALKINGSPEED = 5
RUNNINGSPEED = 12
STEPSPEED = 7
TOSTEPTIMER = 25
ACTUALSPEED = SPEED+HOWSLOWERTOSLOWDOWN