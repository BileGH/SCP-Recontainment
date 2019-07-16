if sprite_index = spr_smokeeffect {
	speed = random_range(10, 50)
	image_angle = random_range(0, 360)
	ImageAngleSpeed = random_range(-90, 90)
	HowToLessen = random_range(1.1, 2)
	Alpha = random_range(0.2, 0.5)
	scale = (100-speed) /30
}
else {
	if sprite_index = spr_bloodeffect {
		speed = random_range(5, 150)
		image_angle = random_range(0, 360)
		ImageAngleSpeed = random_range(-10, 10)
		HowToLessen = random_range(1.5, 3)
		Alpha = random_range(0.7, 1)
		scale = (180-speed) /2
	}
}
image_xscale = scale
image_yscale = scale

//scale = random_range(1, 3)