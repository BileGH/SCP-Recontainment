object_set_sprite(obj_cursor_menu,txr_menu_cursor_select);

if mouse_check_button(mb_left) 
{
	audio_stop_all()
	room_goto(rm_pathfinding_test);
}