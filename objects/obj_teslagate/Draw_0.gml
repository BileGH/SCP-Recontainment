
if (debug_mode) {
	draw_self()
	draw_set_font(fnt_default)
	draw_text(x,y+64,string(state))
	draw_set_color(c_red)
	draw_rectangle(x1-2,y1-2,x1+2,y1+2,false)
	draw_rectangle(x2-2,y2-2,x2+2,y2+2,false)
	draw_rectangle(x3-2,y3-2,x3+2,y3+2,false)
	draw_rectangle(x4-2,y4-2,x4+2,y4+2,false)
	draw_set_color(c_white)
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
		if !instance_exists(teslaSprite) {
			teslaSprite = instance_create_layer(x,y,"Lights",obj_sprite)
			with (teslaSprite) {
				
			}
		}
	}
} else {
	if instance_exists(teslaSprite) {
		instance_destroy(teslaSprite)
		teslaSprite = noone
	}
}

/*
if (firing) {
	if (orientation == 0) {
		draw_sprite_pos(txr_teslafield,irandom_range(0,8),x1,y1,x2,y2,x3,y3,x4,y4,1)
	}
	
	if (orientation == 1) {
		draw_sprite_pos(txr_teslafield,irandom_range(0,8),x1,y1,x2,y2,x3,y3,x4,y4,1)
	}
}
*/