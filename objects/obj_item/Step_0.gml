/// @description Insert description here
// You can write your code in this editor

if firstStep {
	if item == "empty" {
		instance_destroy(self)
	} else {
		switch(item) {
			case "weapon_scar":
			sprite_index = spr_inv_scar
			break
			case "weapon_9mm":
			sprite_index = spr_inv_9mm
			break
			case "paper":
			sprite_index = spr_inv_paper
			break
		}
	}
	firstStep = false
}

var hasFreeSlot = false
var freeSlot = 0

if interact {
	// TODO : Pickup sound
	with (interactCaller) {
		if (object_index == obj_player) {
			displayText = localization("getitem")
		}
		if inv[0] == "PLY" {
			for (var i = 14; i > 0; --i) {
				if inv[i] == "empty" {
					freeSlot = i
					hasFreeSlot = true
				}
			}
			
			if hasFreeSlot {
				obj_player.inv[freeSlot] = other.item
			} else {
				// TODO: Player message
			}
			
		} else if inv[0] == "NPC" {
			// TODO: NPC pickup
			for (var i = 14; i > 0; --i) {
				if inv[i] == "empty" {
					freeSlot = i
					hasFreeSlot = true
				}
			}
			
			if hasFreeSlot {
				self.inv[freeSlot] = other.item
			} else {
				// TODO: Player message
			}
		}
	}
	if hasFreeSlot {
		instance_destroy(self)
	}
}

// Inherit the parent event
event_inherited();

