// Spawn menu
var k = 0
var dist = 128
btnPlay = instance_create_layer(64,256 + (dist * ++k),"UI",obj_button)
btnLoad = instance_create_layer(64,256 + (dist * ++k),"UI",obj_button)
btnExit = instance_create_layer(64,256 + (dist * ++k),"UI",obj_button)


var scalex = 1
var scaley = 1
with (btnPlay) {
	hasText = true
	text = "Play"
	font = fnt_default
	image_xscale = scalex
	image_yscale = scaley
}

with (btnLoad) {
	hasText = true
	text = "Load"
	font = fnt_default
	image_xscale = scalex
	image_yscale = scaley
}

with (btnExit) {
	hasText = true
	text = "Exit"
	font = fnt_default
	image_xscale = scalex
	image_yscale = scaley
}

