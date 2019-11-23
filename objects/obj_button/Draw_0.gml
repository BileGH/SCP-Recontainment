draw_self()

if hasText {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	if font_exists(font) {
		draw_text(x+(sprite_width/2),y+(sprite_height/2),text)
	}
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}