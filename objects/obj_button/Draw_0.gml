if enableSprite {
	draw_self()
}
draw_set_alpha(1)
if hasText {
	if (centralized) {
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
	}
	
	if font_exists(font) {
		draw_set_font(font)
		draw_text(x+(sprite_width/2)+textOffsetX,y+(sprite_height/2)+textOffsetY,text)
	}
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}