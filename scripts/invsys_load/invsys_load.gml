// Both players and NPCs can have inventories.

// Create empty inventory slots.
for (var i = 0; i < 8; ++i) {
	if (i == 0) {
		// 0 is inventory information
		self.inv[i] = "PLY" // Inventory Type NPC / PLY
	} else {
		// above 0 is item information
		self.inv[i] = 0 // Item ID
	}
}

// If it's a NPC, we can already setup a predefined inventory
if (self != obj_player) {
	with (self) {
		if self == npc_mtf {
			var k = 0
			inv[k++] = "NPC"
			inv[k++] = "weapon_scar"
			inv[k++] = "weapon_9mm"
			inv[k++] = "keycard_lvl4"
		} else if self == npc_scientist {
			var k = 0
			inv[k++] = "NPC"
			inv[k++] = "keycard_lvl" + string(floor(irandom_range(2,5)))
		} else if self == npc_dclass {
			inv[0] = "NPC"
			var chance = floor(irandom_range(1,5))
			if (chance == 5) {
				inv[1] = "paper_173"
			} else {
				inv[1] = "empty"
			}
		}
	}
}