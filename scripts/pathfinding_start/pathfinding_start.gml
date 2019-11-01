///@description pathfinding_start();
///@arg final_xpos
///@arg final_ypos
// Arguments
var final_x = argument0;
var final_y = argument1;

// Start the path
if (mp_grid_path(global.AI_grid, AI_path, x, y, final_x, final_y, false)) {
    path_start(AI_path, 4, path_action_stop, false);       // Start to move the AI towards the finish line
}