draw_set_font(fnt_menu)

var i=0;
repeat(buttons)
{
	draw_set_color(c_black)
	
	if(menu_index == i) draw_set_color(c_gray);
	
	draw_text(x,y+button_h*i,button[i]);
	i++;
}