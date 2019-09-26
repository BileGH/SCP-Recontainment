var amountX = sprite_width / 2
var amountY = sprite_height / 2

if (global.Debug_Mode) {
	draw_self()
	draw_text(x,y-32,string(state))
}

/*
if (orientation == 0) {
	draw_sprite(txr_teslagate,0,x-sprite_width,y)
	draw_sprite(txr_teslagate,1,x+sprite_width,y)
	
	draw_sprite(txr_tesla_caution,0,x,y-32)
	draw_sprite(txr_tesla_caution,1,x,y+32)
} else {
	draw_sprite(txr_teslagate,0,x,y-sprite_height)
	draw_sprite(txr_teslagate,0,x,y+sprite_height)
}
*/

if (firing) {
	if (orientation == 0) {
		draw_sprite_pos(txr_teslafield,irandom_range(0,8),x-amountX,y-amountY,x+amountX,y-amountY,x+amountX,y+amountY,x-amountX,y+amountY,1)
	}
}