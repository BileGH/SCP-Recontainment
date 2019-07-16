var Splatter = instance_create_layer(x, y, "BulletLayer", obj_splatter)
with(Splatter) {
	image_angle = other.image_angle + 180
}

for (var i = HowManyEffectsCreate; i > 0; i -= 1) {
	var Effect = instance_create_layer(x, y, "BulletLayer", obj_effect)
	with(Effect) {
		direction = other.image_angle + 180 + random_range(-30, 30) sprite_index = other.ToEffect
	}
}
