/// @description Destroy all item slots
for (var i = 1; i < 15; ++i) {
    with (slot[i]) {
		obj_player.inv[i] = slotItem
		instance_destroy(self)
	}
}