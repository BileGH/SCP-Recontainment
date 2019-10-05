// Checks if the target still exists.
if (target != undefined) {
	if (instance_exists(target)) {
		// Update light position to the target
		light[| eLight.X] = target.x
		light[| eLight.Y] = target.y
		// Flag the light as dirty.
		light[| eLight.Flags] |= eLightFlags.Dirty;
		// Follow the bullet 
		x = target.x
		y = target.y
	} else { // If the target doesent exist anymore...
		// Suicide :P
		instance_destroy(self)
	}
}

