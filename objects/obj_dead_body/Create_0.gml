image_angle=point_direction(x,y,mouse_x,mouse_y);

if global.dead=0 image_angle=point_direction(x,y,obj_player.x,obj_player.y);

texturegroup_get_sprites("dead_bodies");

if global.body_type=1 object_set_sprite(obj_dead_body,txr_player_dead);

if global.body_type=2 object_set_sprite(obj_dead_body,txr_scientist_dead);

if global.body_type=3 object_set_sprite(obj_dead_body,txr_dclass_dead);

global.body_type=0;