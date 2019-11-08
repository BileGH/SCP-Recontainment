
if (global.Debug_Mode) {
	draw_self()
	draw_set_font(fnt_default)
	draw_text(x,y+64,string(state))
}

if (orientation == 0) {
	draw_sprite(txr_tesla_floor_0,0,x,y)
}

if (orientation == 1) {
	draw_sprite(txr_tesla_floor_1,0,x,y)
}

if (orientation == 0) {
	draw_sprite(txr_tesla_gate_0,0,x,y)
}

if (orientation == 1) {
	draw_sprite(txr_tesla_gate_1,0,x,y)
}


if (firing) {
	if (orientation == 0) {
		draw_sprite_pos(txr_teslafield,irandom_range(0,8),x1,y1,x2,y2,x3,y3,x4,y4,1)
	}
	
	if (orientation == 1) {
		draw_sprite_pos(txr_teslafield,irandom_range(0,8),x1,y1,x2,y2,x3,y3,x4,y4,1)
	}
}
