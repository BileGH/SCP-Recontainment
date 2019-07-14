//MOTION
direction = point_direction(x, y, mouse_x, mouse_y) random_range(-5, 5);
speed = 10;
image_angle = direction;
Owner = npc_mtf
Damage = 100
ToCheck = 0
HowManyCheck = round(speed/2)

#macro MacroCollisionCheck if collision_line(other.xprevious, other.yprevious, other.x, other.y, self, 1, 0)
#macro MacroCollisionOutcome if object_index != other.Owner {HP -= other.Damage instance_destroy(other)}
#macro MacroCollision MacroCollisionCheck {MacroCollisionOutcome}