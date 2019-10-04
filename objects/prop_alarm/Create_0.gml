var validSelection = false;
switch (facing) {
	case 1: // Facing DOWN
	validSelection = true
	posx = x
	posy = y + 32
	break;
	
	case 2: // Facing RIGHT
	validSelection = true
	posx = x + 32
	posy = y
	break;
	
	case 3: // Facing UP
	validSelection = true
	posx = x
	posy = y - 32
	break;
	
	case 4: // Facing LEFT
	validSelection = true
	posx = x - 32
	posy = y
	break;
}




// Create light
light = light_create_point(posx,posy,32,c_red,512,5)

// Time (in seconds) for the alarm to replay
alarmTime = 2

// Timer for the alarm.
alarmTimer = room_speed * alarmTime


// Add light to world.
light_add_to_world(light)