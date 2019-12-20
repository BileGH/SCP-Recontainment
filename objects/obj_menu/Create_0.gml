// Spawn menu
var k = 0
var dist = 256
btnPlay = instance_create_layer(480 + (dist * ++k),288,"UI",obj_button)
btnLoad = instance_create_layer(480 + (dist * ++k),288,"UI",obj_button)
btnExit = instance_create_layer(480 + (dist * ++k),288,"UI",obj_button)


var scalex = 0.125
var scaley = 0.125
var spr = spr_folder
var offsetY = 64
var fnt = fnt_courier24
with (btnPlay) {
	hasText = true
	text = localization("button_newgame")
	font = fnt
	image_xscale = scalex
	image_yscale = scaley
	image_index = spr
	textOffsetY = offsetY
}

with (btnLoad) {
	hasText = true
	text = localization("button_options")
	font = fnt
	image_xscale = scalex
	image_yscale = scaley
	image_index = spr
	textOffsetY = offsetY
}

with (btnExit) {
	hasText = true
	text = localization("button_exit")
	font = fnt
	image_xscale = scalex
	image_yscale = scaley
	image_index = spr
	textOffsetY = offsetY
}

