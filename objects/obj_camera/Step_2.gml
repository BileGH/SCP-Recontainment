if instance_exists(obj_player) {
    XPlayer = obj_player.x YPlayer = obj_player.y
}


x = ((x * HowFarBehind + mouse_x) +
        (XPlayer * OffsetThePlayer)) /
    (OffsetThePlayer + HowFarBehind + 1)
	
y = ((y * HowFarBehind + mouse_y) +
        (YPlayer * OffsetThePlayer)) /
    (OffsetThePlayer + HowFarBehind + 1)
