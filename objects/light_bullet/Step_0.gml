if (target != undefined) {
	if (instance_exists(target)) {
		light[| eLight.X] = target.x
		light[| eLight.Y] = target.y
		light[| eLight.Flags] |= eLightFlags.Dirty;
		x = target.x
		y = target.y
	} else {
		if (light != undefined) {
			light_remove_from_world(light);
			light_destroy(light); 
		}
		instance_destroy(self)
	}
}

