image_xscale = 1
image_yscale = 1

xc = bbox_left
yc = bbox_top

text = localization("button_options")

backToMenu = false

// Spawn options 

var k = 0 // Counter for instances. Reset upon creating a new collumn
var dist = 32 // Distance between items
var c1posx = 64 // X pos for first collumn of options
var c1posy = 128 // Y pos for first collumn of options
var ly = "UI" // The layer for all the option buttons
var trigger = mb_left // Mouse trigger for the buttons
var del = true // Auto deletion upon options menu closing

// Checkbox Test
chkboxTest = instance_create_layer(xc + c1posx ,(yc + c1posy) + (dist * k++),ly,obj_button)
chkboxTestChecked = false

// List Item Test
listTest = instance_create_layer(xc + c1posx ,(yc + c1posy) + (dist * k++),ly,obj_button)
listTestOptions[0] = "List 1"
listTestOptions[1] = "List 2"
listTestOptions[2] = "List 3"
listTestSelected = 0

btnClose = instance_create_layer(x + (sprite_width/2 - 64),yc + 32,ly,obj_button)


with (chkboxTest) {
	mouseTrigger = trigger
	sprite_index = spr_checkbox
	autoDel = del
	deleteWith = other
	hasText = true
	text = "Checkbox"
	font = fnt_courier15
	textOffsetX = 64
	centralize = false
}

with (listTest) {
	mouseTrigger = trigger
	sprite_index = spr_checkbox
	autoDel = del
	deleteWith = other
	hasText = true
	text = other.listTestOptions[other.listTestSelected]
	font = fnt_courier15
	textOffsetX = 64
	centralize = false
}

with (btnClose) {
	mouseTrigger = trigger
	sprite_index = spr_checkbox
	autoDel = del
	deleteWith = other
}