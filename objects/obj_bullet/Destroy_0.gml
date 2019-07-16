var Splatter = instance_create_layer(x, y, "BulletLayer", obj_effectsplatter)
with(Splatter) {
	image_angle = other.image_angle + 180 sprite_index = other.ToSplatter
}

for (var i = HowManyEffectsCreate; i > 0; i -= 1) {
	var Effect = instance_create_layer(x, y, "BulletLayer", obj_effectair)
	with(Effect) {
		direction = other.image_angle + 180 + random_range(-30, 30) sprite_index = other.ToEffect
	}
}

if Blood = 1 {
	var EffectFloorBlood = instance_create_layer(x, y, "Bottom_Layer", obj_effectfloor)
	with(EffectFloorBlood) {image_angle = other.image_angle + 180}
}

with (IDToDamage) {HP-=other.Damage}