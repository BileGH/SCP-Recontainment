draw_self()

// Item Descriptions
if (mouseIn > 0) {
	with (slot[mouseIn]) {
		switch(slotItem) {
			case "weapon_scar":
			other.textToDraw = "SCAR Rifle"
			break
			case "weapon_9mm":
			other.textToDraw = "9mm USP Match-7"
			break
			case "paper_173":
			other.textToDraw = "Document SCP-173" // later to be replaced with localization("item_paper_173")
			break
		}
	}
}

draw_set_font(fnt_game)
draw_set_halign(fa_center)
//draw_set_valign(fa_middle)	
draw_text(x,y+64,textToDraw)
draw_set_halign(fa_left)
draw_set_valign(fa_top)