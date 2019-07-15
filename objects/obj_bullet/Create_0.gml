//MOTION
speed = 250;
image_angle = direction;
Damage = 0
Owner = 0

//MACROS
	//#macro MacroCollisionCheck if collision_line(other.x, other.y, other.x+other.hspeed, other.y+other.vspeed, self, 1, 0)
#macro MacroCollisionCheck if collision_line(other.xprevious, other.yprevious, other.x, other.y, self, 1, 0)
#macro MacroCollisionOutcome if id != other.Owner {HP -= other.Damage instance_destroy(other)}
	//Alive. Has HP.
#macro MacroCollision MacroCollisionCheck {MacroCollisionOutcome}
	//Invincible or Solid or Not alive. Has no HP.
#macro MacroCollisionSolid MacroCollisionCheck {instance_destroy(other)}