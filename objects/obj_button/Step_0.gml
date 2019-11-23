if firstStep {
	if (text == undefined) {hasText = false}
	if (font == undefined) {hasText = false}
	if (mouseTrigger == undefined) {mouseTrigger = mb_any}
	firstStep = false
}

// Timers
if (interactTimer > 0) {--interactTimer}

// User Input Handling

if point_in_rectangle(mouse_x,mouse_y,x,y,x + (sprite_width * 1),y + (sprite_height * 1)) {
	mouseOver = true
	if mouse_check_button(mouseTrigger) {
		mousePressing = true
		if (interactTimer <= 0) {
			triggered = true
			interactTimer = interactTime
		}
	} else {
		mousePressing = false
	}
} else {
	mouseOver = false
}