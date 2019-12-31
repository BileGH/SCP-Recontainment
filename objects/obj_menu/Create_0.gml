canClick = true

// Spawn menu
var k = 0
var dist = 256
btnPlay    = instance_create_layer(480 + (dist * ++k),288,"UI3",obj_button)
btnLoad    = instance_create_layer(480 + (dist * ++k),288,"UI3",obj_button)
btnOptions = instance_create_layer(480 + (dist * ++k),288,"UI3",obj_button)
btnExit    = instance_create_layer(480 + (dist * ++k),288,"UI3",obj_button)

var scalex = 0.125
var scaley = 0.125
var spr = spr_folder
var offsetY = 64
var fnt = fnt_courier24
var at = true

with (btnPlay) {
	hasText = true
	text = localization("button_newgame")
	font = fnt
	image_xscale = scalex
	image_yscale = scaley
	image_index = spr
	textOffsetY = offsetY
	attached = true
	attachedTo = other
}

with (btnLoad) {
	hasText = true
	text = localization("button_load")
	font = fnt
	image_xscale = scalex
	image_yscale = scaley
	image_index = spr
	textOffsetY = offsetY
	attached = true
	attachedTo = other
}

with (btnOptions) {
	hasText = true
	text = localization("button_options")
	font = fnt
	image_xscale = scalex
	image_yscale = scaley
	image_index = spr
	textOffsetY = offsetY
	attached = true
	attachedTo = other
}

with (btnExit) {
	hasText = true
	text = localization("button_exit")
	font = fnt
	image_xscale = scalex
	image_yscale = scaley
	image_index = spr
	textOffsetY = offsetY
	attached = true
	attachedTo = other
}

