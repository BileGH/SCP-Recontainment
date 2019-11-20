// Make sure muzzleflash exists before toggling it to ignore this shadow caster.
// Also its on Step because if it doesen't exist, we can wait until it's created.

if (instance_exists(light_muzzleflash)) && !ignored {
	light_ignore_shadow_caster(light_muzzleflash.light,id)
	ignored = true
}

// Always set bullets to ignore the shadow casters.
with (light_bullet) {
	light_ignore_shadow_caster(light,other.id)
}
