if (loading) {
	var percent = ((loadStage * 100)/finalStage)
	draw_set_color(c_black)
	draw_rectangle(centerX-256,centerY-32,centerX+256,centerY+32,false)
	draw_set_color(c_white)
	draw_healthbar(centerX-256,centerY-32,centerX+256,centerY+32,percent,c_white,c_white,c_white,0,true,false)
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(centerX,centerY,loadText + " " + string(percent) + "%")
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_set_color(c_white)
}