/*
if Opening = 0 and Open = 0 {
    with(obj_player) {
        if collision_point(x, y, other, 0, 0) {
            x = xprevious y = yprevious
        } else {
            if collision_point(x + other.HowFarCollide, y, other, 0, 0) {
                x = xprevious
            }
            else {
                if collision_point(x - other.HowFarCollide, y, other, 0, 0) {
                    x = xprevious
                }
            }
            if collision_point(x, y + other.HowFarCollide, other, 0, 0) {
                y = yprevious
            }
            else {
                if collision_point(x, y - other.HowFarCollide, other, 0, 0) {
                    y = yprevious
                }
            }
        }
    }
}
