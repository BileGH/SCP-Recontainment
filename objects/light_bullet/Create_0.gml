// The bullet this entity is attached to.
target = noone

// Inherit the parent event
event_inherited();

// If the light isnt defined, something went wrong with the inherited script.
// This can be removed later, but it's better to keep for now as we're still messing with
// the lighting system. This is a crash prevention.
if (light = undefined) {instance_destroy(self)}