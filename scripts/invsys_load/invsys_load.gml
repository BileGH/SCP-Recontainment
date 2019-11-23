// Both players and NPCs can have inventories.

// Create empty inventory slots.
for (var i = 0; i < 8; ++i) {
	if (i == 0) {
		// 0 is inventory information
		self.inv[i] = "PLY" // Inventory Type NPC / PLY
	} else {
		// above 0 is item information
		self.inv[i] = "empty" // Item ID
	}
}

// If it's a NPC, we can already setup a predefined inventory
if (self.object_index != obj_player) {
	with (self) {
		if object_index == npc_mtf {
			var k = 0
			inv[k++] = "NPC"
			inv[k++] = "weapon_scar"
			inv[k++] = "weapon_9mm"
			inv[k++] = "keycard_omnni"
		} else if object_index == npc_scientist {
			var k = 0
			inv[k++] = "NPC"
			inv[k++] = "keycard_" + string(floor(irandom_range(2,5)))
		} else if object_index == npc_dclass {
			inv[0] = "NPC"
			inv[1] = "item_paper_orientation"
		}
	}
} else {
	with (self) {
		var k = 0
		inv[k++] = "PLY"
		inv[k++] = "weapon_scar"
		inv[k++] = "weapon_9mm"
		inv[k++] = "keycard_omnni"
	}
}