if Locked = 0 and instance_exists(obj_player) {
    if instance_nearest(obj_player.x, obj_player.y, obj_door).id = id {
        if distance_to_point(obj_player.x, obj_player.y)<HowFarInteractWithDoor {
            if Opening = 0 {
                if Open = 0 {
                    image_speed = ToImageSpeed alarm[0] = HowLongToOpen Opening = 1
                } else {
                    image_speed = -ToImageSpeed alarm[0] = HowLongToOpen Opening = 1

                }
            }
        }
    }
}
