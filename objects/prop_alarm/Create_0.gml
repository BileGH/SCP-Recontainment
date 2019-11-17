switch (facing) {
	case 1: // Facing DOWN
	posx = x
	posy = y + 32
	break;
	
	case 2: // Facing RIGHT
	posx = x + 32
	posy = y
	break;
	
	case 3: // Facing UP
	posx = x
	posy = y - 32
	break;
	
	case 4: // Facing LEFT
	posx = x - 32
	posy = y
	break;
}


// Time (in seconds) for the alarm to replay
alarmTime = 2

// Timer for the alarm.
alarmTimer = room_speed * alarmTime

// First step for this object?
firstStep = true