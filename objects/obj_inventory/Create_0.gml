image_xscale = 6
image_yscale = 3

xc = bbox_left + 16
yc = bbox_top + 16

mouseItem = "empty"
mouseItemFromSlot = 0
mouseIn = 0
textToDraw = "empty"
slot[0] = "empty"

// Row 1
for (var i = 1; i < 8; ++i) {
	slot[i] = instance_create_layer(xc + (48 * i),yc,"UI",obj_inventoryslot)
	with (slot[i]) {
		slot = i
		slotItem = obj_player.inv[i]
	}
}

// Row 1
for (var i = 1; i < 8; ++i) {
	slot[i+8] = instance_create_layer(xc + (48 * i),yc + 32,"UI",obj_inventoryslot)
	with (slot[i+8]) {
		slot = i + 8
		slotItem = obj_player.inv[i + 8]
	}
}

