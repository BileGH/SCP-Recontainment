#region Inventory [Equipped Hotbar]
switch(inv[htbrsl]) {
	case "weapon_scar":
	image_index = spr_player_scar
	break
	case "weapon_9mm":
	image_index = spr_player_handgun
	break
}
#endregion

draw_self()

#region Text Display
if (textTimer > 0) {
	draw_set_font(fnt_courier16)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(x,y+64,displayText)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	textTimer--
}
#endregion