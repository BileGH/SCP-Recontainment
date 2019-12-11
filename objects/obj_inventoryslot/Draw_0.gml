draw_self()
var s = 128
switch(slotItem) {
	case "weapon_scar":
	draw_sprite_stretched(spr_inv_scar,0,x,y,s,s)
	break
	case "weapon_9mm":
	draw_sprite_stretched(spr_inv_9mm,0,x,y,s,s)
	break
	case "paper_173":
	draw_sprite_stretched(spr_inv_paper,0,x,y,s,s)
	break
}

if (slot == 1) {
	with (obj_inventory) {
		if mouseHasItem {
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)	
	
			switch(mouseItem) {
				case "weapon_scar":
				draw_sprite(spr_inv_scar,0,mouse_x,mouse_y)
				break
				case "weapon_9mm":
				draw_sprite(spr_inv_9mm,0,mouse_x,mouse_y)
				break
				case "paper_173":
				draw_sprite(spr_inv_paper,0,mouse_x,mouse_y)
				break
			}
	
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
		}
	}
}