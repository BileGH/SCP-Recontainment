var amountX = sprite_width / 2
var amountY = sprite_height / 2

if (global.Debug_Mode) {
	draw_self()
	draw_text(x,y-32,string(state))
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
		draw_sprite_pos(txr_teslafield,irandom_range(0,8),x-amountX,y-amountY,x+amountX,y-amountY,x+amountX,y+amountY,x-amountX,y+amountY,1)
	}
	
	if (orientation == 1) {
		draw_sprite_pos(txr_teslafield,irandom_range(0,8),x-amountY,y-amountX,x+amountY,y-amountX,x+amountY,y+amountX,x-amountY,y+amountX,1)
	}
}
