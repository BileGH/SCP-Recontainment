draw_set_alpha(alpha)
draw_set_color(color)
if (drawType == "default") {
	draw_self()
} else 
if (drawType == "rect") || (drawType == "rectangle") {
	draw_rectangle(x1,y1,x2,y2,false)
}
draw_set_color(c_white)
draw_set_alpha(1)