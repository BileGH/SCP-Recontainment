if (interactTimer <= 0) {
	if keyboard_check(vk_anykey) {
		var images = (array_length_1d(img) - 1)
		if (image < images) {
			interactTimer = interactTime
			image += 1
			stage = 0
			alpha = 0
		} else {
			//room_goto(map_menu)
		}
	}
} else {
	--interactTimer
}

switch (stage) {
	case 0:
	if (alpha < 1) {
		alpha += 0.015
	} else {
		++stage
		alpha = 1
		screenTimer = screenTime[image]
	}
	break
	
	case 1:
	if (screenTimer < 0) {
		++stage
	} else {
		--screenTimer
	}
	break
	
	case 2:
	if (alpha > 0) {
		alpha -= 0.015
	} else {
		alpha = 0
		var images = (array_length_1d(img) - 1)
		if (image < images) {
			++image
			stage = 0
		} else {
			if (leaveTimer <= 0) {
				room_goto(rm_loading)
			} else {
				--leaveTimer
			}
		}
	}
	break
}

image_index = img[image]
