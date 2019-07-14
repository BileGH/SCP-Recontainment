//MOTION
direction = point_direction(x, y, mouse_x, mouse_y) + random_range(-5, 5);
speed = 250;
image_angle = direction;
Owner = npc_mtf
Damage = 10

//MACROS
#macro MacroCollisionCheck if collision_line(other.x, other.y, other.x+other.hspeed, other.y+other.vspeed, self, 1, 0)
#macro MacroCollisionOutcome if object_index != other.Owner {HP -= other.Damage instance_destroy(other)}
	//Alive. Has HP.
#macro MacroCollision MacroCollisionCheck {MacroCollisionOutcome}
	//Invincible or Solid or Not alive. Has no HP.
#macro MacroCollisionSolid MacroCollisionCheck {instance_destroy(other)}