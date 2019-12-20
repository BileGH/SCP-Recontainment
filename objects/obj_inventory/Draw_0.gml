draw_self()

// Item Descriptions
if (mouseIn > 0) {
	with (slot[mouseIn]) {
		other.textToDraw = localization("item_" + slotItem)
		/*
		switch(slotItem) {
			case "weapon_scar":
			// Called P90 until we replace the sprite
			other.textToDraw = "P90 Rifle" // later to be replaced with localization("item_weapon_scar")
			break
			case "weapon_9mm":
			other.textToDraw = "9mm USP Match-7"
			break
			case "paper_173":
			other.textToDraw = "Document SCP-173"
			break
		}
		*/
	}
}

draw_set_font(fnt_inventory)
draw_set_halign(fa_center)
//draw_set_valign(fa_middle)	
draw_text(x,y+128,textToDraw)
draw_set_halign(fa_left)
draw_set_valign(fa_top)