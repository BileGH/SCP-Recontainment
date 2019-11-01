///@description Initialize the pathfinding grid properties:
// Get the pathfinding grid properties:
gridcell_width = 32;	// Get the width of a cell
gridcell_height = 32;	// Get the height of a cell
number_hcells = room_width div gridcell_width;      // Get the number of horizontal cells in the room (div function used to get an integer number)
number_vcells = room_height div gridcell_height;    // Get the number of vertical cells in the room (div function used to get an integer number)

// Create the grid for the AI to move through useing the properties created precedently:
/* Using a global var prevent the engine from creating an infinite number of grids. */
global.AI_grid = mp_grid_create(0, 0, number_hcells, number_vcells, gridcell_width, gridcell_height);

// Detect the solid walls
/* No need to be stored in a variable to be accessed */
mp_grid_add_instances(global.AI_grid, obj_wall, true);