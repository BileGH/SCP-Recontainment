HP=100
spd=random_range(1,10);
stop=0;
moving=0;
image_angle=random_range(0,360);
wait=0;
drag=0;

// CAPTAINCOOL newly added variables
// State & AI related
AI_path = path_add();
on_defined_coordinates = true;
get_coordinates = true;
goto_coordinates = false;

MacroPlayerNPCMaster