speed = 0
HowManyTimes = HowAccurate

do {
	x += lengthdir_x(SpeedReal, image_angle)
	y += lengthdir_y(SpeedReal, image_angle)

	ToEffect = spr_effectsmoke ToSplatter = spr_effectsplatterconcrete Blood = 0
	
	with(obj_wall) {
		MacroCollisionSolid
	}
	with(obj_door) {
		MacroCollisionSolid
	}
	with(obj_target_up) {
		MacroCollision
	}

	ToEffect = spr_effectblood ToSplatter = spr_effectsplatterblood Blood = 1
	
	with(obj_player) {
		MacroCollision
	}
	with(npc_mtf) {
		MacroCollision
	}
	with(npc_scientist) {
		MacroCollision
	}
	with(npc_dclass) {
		MacroCollision
	}
	with(npc_scp173) {
		MacroCollision
	}
	with(npc_scp106) {
		MacroCollision
	}

	HowManyTimes -= 1
}
until(HowManyTimes = 0)