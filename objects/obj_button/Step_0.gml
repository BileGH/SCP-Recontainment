if firstStep {
	if (text == undefined) {hasText = false}
	if (font == undefined) {hasText = false}
	if (mouseTrigger == undefined) {mouseTrigger = mb_any}
	if (deleteWith == noone) {autoDel = false}
	if (attachedTo == noone) {attached = false}
	firstStep = false
}

if (attached) {
	if instance_exists(attachedTo) {
		canClick = other.canClick
	}
}

if (autoDel) {
	if !instance_exists(deleteWith) {
		instance_destroy(self)
	}
}

// Timers
if (interactTimer > 0) {--interactTimer}

// User Input Handling

if point_in_rectangle(mouse_x,mouse_y,x,y,x + (sprite_width),y + (sprite_height)) {
	mouseOver = true
	if canClick {
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
		triggered = false
	}
} else {
	mouseOver = false
}
