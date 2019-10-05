if (target != undefined) {
	if (instance_exists(target)) {
		light[| eLight.X] = target.x
		light[| eLight.Y] = target.y
		light[| eLight.Flags] |= eLightFlags.Dirty;
		x = target.x
		y = target.y
	} else {
		instance_destroy(self)
	}
}

