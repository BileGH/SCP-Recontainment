///@description Execute the D-Class state
// Restart the loop
if (place_meeting(x, y, obj_DClass_explorer_follow)) {
	on_defined_coordinates = true;
	get_coordinates = true;
}

// Get obj_DClass_explorer_follow random x&ypos
if (on_defined_coordinates) {
	while (true) {
		// Generate the coordinates
		if (get_coordinates) {
			obj_DClass_explorer_follow.x = irandom(room_width);
			obj_DClass_explorer_follow.y = irandom(room_height);
		}
						
		// Break the loop if the target isn't colliding with any objects
		if (!place_meeting(obj_DClass_explorer_follow.x, obj_DClass_explorer_follow.y, obj_wall)) {
			get_coordinates = false;
			goto_coordinates = true;
			on_defined_coordinates = false;
			break;
		}
	}
						
	// Go towards the generated coordinates
	if (!get_coordinates && goto_coordinates) {
		// Get the finish line coordinates
		var final_xpos = (obj_DClass_explorer_follow.x div 20) * 20;
		var final_ypos = (obj_DClass_explorer_follow.y div 20) * 20;

		// Check for the path & make the AI move using it
		pathfinding_start(final_xpos + sprite_width / 2, final_ypos + sprite_height / 4);
	}
}