if firstStep { // Pseudo-create event
	
	if (slot == 0) {
		if instance_exists(obj_console) {
			with (obj_console) {
				temp_post_message = "obj_inventoryslot was created, but without a defined slot"
				event_user(1)
			}
		}
		instance_destroy(self)
	}
	
	if (slotItem == undefined) {
		if instance_exists(obj_console) {
			with (obj_console) {
				temp_post_message = "obj_inventoryslot was created, but did not have a slotItem defined."
				event_user(1)
			}
		}
		instance_destroy(self)
	}
	firstStep = false
}

if mouse_check_button_pressed(mb_left) { // Check for mouse being held down
	if (mHoldTime < 99) { // We dont need to count that high up.
		++mHoldTime
	}
} else { // If mouse isnt being held...
	mHoldTime = 0 // Reset mouse hold timer
}

if point_in_rectangle(mouse_x,mouse_y,x,y,x+size,y+size) {
	with (obj_inventory) {
		mouseIn = other.slot
	}
}


if (interactTimer <= 0) { // If interaction timer is zero...
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+size,y+size) { // If mouse is hovering the slot...	
		if mouse_check_button_pressed(mb_left) { // On left click...
			interactTimer = interactTime
			mcounter++
			if (mcounter >= 2) { // on Double click...
				// Equip / Use Item.
				if (slotItem != "empty") {
					switch(slotItem) {
						case "weapon_scar":
						// Take mag out
						if instance_exists(obj_console) {
							with (obj_console) {
								temp_post_message = "Attempted to take out SCAR maganize"
								event_user(1)
							}
						}
						break
						case "weapon_9mm":
						// Take mag out
						break
						case "paper_dclass":
						// Quit inventory and spawn paper
						
						break;
					}
				}
			} else {
				if (mHoldTime > 30) { //  on Mouse Hold...
					// Move Item
					with (obj_inventory) {
						mouseItem = other.slotItem
						mouseItemFromSlot = other.slot
					}
				}
			}
		}
	
		if mouse_check_button_released(mb_left) {
			// Drop item on slot
		}
	}
}