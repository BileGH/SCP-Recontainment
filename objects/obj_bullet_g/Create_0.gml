//MOTION
direction=point_direction(x,y,mouse_x,mouse_y);
direction=direction+random_range(-5,5);
speed=150; // CHANGE THIS AFTERWARDS (150)
image_angle=direction;
//SPLATTER
global.flesh=0;
global.wall=0;