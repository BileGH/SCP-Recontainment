if global.DebugInfo = 1 {draw_self()}

/*
with(obj_player) {
draw_sprite_ext(txr_fovcone,0,x,y,1,1,image_angle,0,1)
};
*/

with(obj_wall) {
    draw_set_colour(c_black)

    draw_primitive_begin(pr_trianglestrip)
    draw_vertex(bbox_left, bbox_top);
    var dir = point_direction(other.x, other.y, bbox_left, bbox_top)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));

    draw_vertex(bbox_left, bbox_bottom);
    var dir = point_direction(other.x, other.y, bbox_left, bbox_bottom)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));

    draw_vertex(bbox_right, bbox_bottom);
    var dir = point_direction(other.x, other.y, bbox_right, bbox_bottom)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));

    draw_vertex(bbox_right, bbox_top);
    var dir = point_direction(other.x, other.y, bbox_right, bbox_top)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));

    draw_vertex(bbox_left, bbox_top);
    var dir = point_direction(other.x, other.y, bbox_left, bbox_top)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));
	
    draw_primitive_end()
};

with(obj_door) {
    if Open = 0 {
        draw_set_colour(c_black)

    draw_primitive_begin(pr_trianglestrip)
	if bbox_bottom-bbox_top>bbox_right-bbox_left
	{
    draw_vertex(bbox_left+((bbox_right-bbox_left)/2), bbox_top-other.Number2);
    var dir = point_direction(other.x, other.y, bbox_left+((bbox_right-bbox_left)/2)-other.Number, bbox_top)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));

    draw_vertex(bbox_left+((bbox_right-bbox_left)/2), bbox_bottom+other.Number2);
    var dir = point_direction(other.x, other.y, bbox_left+((bbox_right-bbox_left)/2)-other.Number, bbox_bottom)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));
	}
else
{
    draw_vertex(bbox_right+other.Number2, bbox_top+((bbox_bottom-bbox_top)/2));
    var dir = point_direction(other.x, other.y, bbox_right+other.Number, bbox_top+((bbox_bottom-bbox_top)/2)-other.Number)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));

    draw_vertex(bbox_left-other.Number2, bbox_top+((bbox_bottom-bbox_top)/2));
    var dir = point_direction(other.x, other.y, bbox_left-other.Number, bbox_top+((bbox_bottom-bbox_top)/2)-other.Number)
    draw_vertex(x + lengthdir_x(other.ShadowSize, dir), y + lengthdir_y(other.ShadowSize, dir));
}

    draw_primitive_end()
    }
};
