CharacterX = obj_player.x
CharacterY = obj_player.y

image_speed = 0
Opening = 0

if Open = 0 {
    Open = 1 image_index = ImageOpen
}
else {
    Open = 0 image_index = 0

    if collision_point(CharacterX, CharacterY, self, 1, 0) {
        if abs(angle_difference(image_angle, point_direction(x, y, CharacterX, CharacterY))) <= 90 {
            obj_player.x = CharacterX + (x-CharacterX) + lengthdir_x(HowFarTeleportWhenStuckFront, image_angle)
            obj_player.y = CharacterY + (y-CharacterY) + lengthdir_y(HowFarTeleportWhenStuckFront, image_angle)
        } else {
            obj_player.x = CharacterX + (x-CharacterX) + lengthdir_x(HowFarTeleportWhenStuckBack, image_angle + 180)
            obj_player.y = CharacterY + (y-CharacterY) + lengthdir_y(HowFarTeleportWhenStuckBack, image_angle + 180)
        }
	if collision_point(CharacterX, CharacterY, self, 1, 0) {}
    }
}
