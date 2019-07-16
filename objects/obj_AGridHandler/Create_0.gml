GridSize=125

if instance_exists(obj_BGridHandler) {
	global.grid50 = mp_grid_create(x, y, round((obj_BGridHandler.x - x) / GridSize), round((obj_BGridHandler.y - y) / GridSize), GridSize, GridSize)
	mp_grid_add_instances(obj_wall, obj_wall, 1)
}
else {
	show_message("You messed up the" +GridSize+"x"+GridSize+"AI mp_grid.")
	instance_destroy()
}
