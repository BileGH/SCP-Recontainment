draw_self()

with(obj_wall) {
    draw_set_colour(c_black)

    draw_primitive_begin(pr_trianglestrip)
    draw_vertex(bbox_left, bbox_top);
    var dir = point_direction(other.x, other.y, bbox_left, bbox_top)
    draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

    draw_vertex(bbox_left, bbox_bottom);
    var dir = point_direction(other.x, other.y, bbox_left, bbox_bottom)
    draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

    draw_vertex(bbox_right, bbox_top);
    var dir = point_direction(other.x, other.y, bbox_right, bbox_top)
    draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

    draw_vertex(bbox_right, bbox_bottom);
    var dir = point_direction(other.x, other.y, bbox_right, bbox_bottom)
    draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

    draw_primitive_end()
};

draw_self()
with(obj_door) {
    if Open = 0 {
        draw_set_colour(c_black)

        draw_primitive_begin(pr_trianglestrip)
        draw_vertex(bbox_left, bbox_top);
        var dir = point_direction(other.x, other.y, bbox_left, bbox_top)
        draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

        draw_vertex(bbox_left, bbox_bottom);
        var dir = point_direction(other.x, other.y, bbox_left, bbox_bottom)
        draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

        draw_vertex(bbox_right, bbox_top);
        var dir = point_direction(other.x, other.y, bbox_right, bbox_top)
        draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

        draw_vertex(bbox_right, bbox_bottom);
        var dir = point_direction(other.x, other.y, bbox_right, bbox_bottom)
        draw_vertex(x + lengthdir_x(other.shadowsize, dir), y + lengthdir_y(other.shadowsize, dir));

        draw_primitive_end()
    }
};
