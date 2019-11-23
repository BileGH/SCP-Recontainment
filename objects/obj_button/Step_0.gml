if firstStep {
	if (text == undefined || text == "") {hasText = false}
	if (font == undefined) {hasText = false}
	if (mouseTrigger == undefined) {mouseTrigger = mb_any}
	firstStep = false
}

// Timers
if (interactTimer > 0) {--interactTimer}

// User Input Handling

if point_in_rectangle(mouse_x,mouse_y,x,y,x + (sprite_width * image_xscale),y + (sprite_height * image_yscale)) {
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