if mouseHasItem {
	if mouse_check_button_released(mb_left) {
		if !point_in_rectangle(mouse_x,mouse_y,x - (sprite_width * image_xscale)/2,y - (sprite_height * image_yscale)/2,x + (sprite_width * image_xscale)/2,y + (sprite_height * image_yscale)/2) {
			// Drop item
			if instance_exists(obj_player) {
				var itemObj = instance_create_layer(obj_player.x,obj_player.y,"Instances",obj_item)
				with (itemObj) {
					item = other.mouseItem
				}
				mouseItem = "empty"
				mouseHasItem = false
				mouseItemFromSlot = 0
			}
		} else {
			var s = false
			for (var i = 1; i < 15; ++i) {
				with (slot[i]) {
					if point_in_rectangle(mouse_x,mouse_y,x,y,x+size,y+size) {
						slotItem = other.mouseItem
						other.mouseHasItem = false
						other.mouseItemFromSlot = 0
						other.mouseItem = "empty"
						s = true
					}
				}
			}
			
			if s == false {
				with (slot[mouseItemFromSlot]) {
					slotItem = other.mouseItem
				}
				mouseHasItem = false
				mouseItem = "empty"
				mouseItemFromSlot = 0
			}
		}
	}
}