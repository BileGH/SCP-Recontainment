if keyboard_check_released("`") instance_create_layer(1,1,"Instances",obj_console)

if keyboard_check_released("`") && instance_exists(obj_console) instance_destroy(obj_console)