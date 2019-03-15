image_angle=point_direction(x,y,mouse_x,mouse_y);

if global.dead=0 image_angle=point_direction(x,y,obj_player.x,obj_player.y);

texturegroup_get_sprites("dead_bodies");