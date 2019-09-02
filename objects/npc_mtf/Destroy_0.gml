instance_create_layer(x,y,"BulletLayer",obj_dead_body_mtf);

for (i = HowManyBloodPuddles; i > 1; i -= 1) {
	instance_create_layer(x + random_range(-HowFarOutBloodPuddles, HowFarOutBloodPuddles), y + random_range(-HowFarOutBloodPuddles, HowFarOutBloodPuddles), "Bottom_Layer", obj_blood_puddle);
}