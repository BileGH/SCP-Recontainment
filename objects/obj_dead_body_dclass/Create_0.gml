image_angle=point_direction(x,y,mouse_x,mouse_y);

if instance_exists(obj_player) image_angle=point_direction(x,y,obj_player.x,obj_player.y);

texturegroup_get_sprites("dead_bodies");