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