//MOTION
Damage = 0
Owner = 0
Blood = 1

Speed = 250
HowAccurate = 20

SpeedReal = Speed / HowAccurate
HowManyTimes = HowAccurate

ToEffect = spr_effectsmoke
HowManyEffectsCreate = 20

IDToDamage = NaN

//MACROS
//#macro MacroCollisionCheck if collision_line(other.x, other.y, other.x+other.hspeed, other.y+other.vspeed, self, 1, 0)
#macro MacroCollisionCheck if collision_line(other.xprevious, other.yprevious, other.x, other.y, self, 1, 0)

#macro MacroCollisionOutcome if id != other.Owner {other.IDToDamage=id HowManyTimes = 0 instance_destroy(other)} 

//Alive. Has HP.
#macro MacroCollision MacroCollisionCheck {MacroCollisionOutcome}

//Invincible or Solid or Not alive. Has no HP.
#macro MacroCollisionSolid MacroCollisionCheck {HowManyTimes = 0 instance_destroy(other)}