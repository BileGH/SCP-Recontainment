switch (menu_index)
{
	case 0:
		show_debug_message("NEW GAME");
		break;
	case 1:
		show_debug_message("GAME LOADED");
		break;
	case 2:
		room_goto(map_tutorial);
		break;
	case 3:
		game_end();
		break;
}