if !paused {
#region Blink
if blinking {canSee = false} else {canSee = true}

if (blinkTimer <= 0) {
	// Blink
	blinking = true
	if eyesSmoked {
		blinkTimer = blinkTime * 0.65
	} else {
		blinkTimer = blinkTime
	}
} else {
	--blinkTimer
	blinking = false
}

if eyesSmoked {
	if (eyesSmokeTimer > 0) {
		--eyesSmokeTimer
	} else
	if (eyesSmokeTimer <= 0) {
		eyesSmoked = false
	}
}
#endregion

#region Visibility
if canSee {
	var ox = x
	var oy = y
	var size = 2048
	var dir = direction
	var fov = 45
	var x1 = ox + lengthdir_x(size,dir+(fov/2))
	var y1 = oy + lengthdir_y(size,dir+(fov/2))
	var x2 = ox + lengthdir_x(size,dir-(fov/2))
	var y2 = oy + lengthdir_y(size,dir-(fov/2))
	#region NPC Visibility
	/* TODO: FINISH
	with (npc_base) {
		if point_in_triangle(x,y,x1,y1,x2,y2,ox,oy) {
			
		}
	}
	*/
	#endregion
	#region 173 Visibility
	// 173 Code
	if (object_index != npc_scp173) {
		if instance_exists(npc_scp173) {
			if point_in_triangle(npc_scp173.x,npc_scp173.y,x1,y1,x2,y2,ox,oy) {
				// 173 is in this entity's FOV
				if (collision_line(npc_scp173.x,npc_scp173.y,x,y,obj_wall,false,false) == noone) {
					// 173 is in sights
					sight173 = true
					// Add this ent to SCP 173 sight list
					with(npc_scp173) {
						var hasFreeSlot = false
						var freeSlot = 0
						for (var i = array_length_1d(viewingEnts) -1; i > 0; --i) {
							if viewingEnts[i] == noone {
								hasFreeSlot = true
								freeSlot = i
							}
						}
						
						if hasFreeSlot {
							viewingEnts[freeSlot] = other
						} else {
							viewingEnts[array_length_1d(viewingEnts)] = other
						}
						
					}
				} else {
					sight173 = false
					#region Remove self from SCP 173 viewing list
					with(npc_scp173) {
						var isOnSlot = false
						var occupiedSlot = 0
						for (var i = array_length_1d(viewingEnts) -1; i > 0; --i) {
							if (viewingEnts[i] == other) {
								isOnSlot = true
								occupiedSlot = i
							}
						}
						
						if isOnSlot {
							viewingEnts[occupiedSlot] = noone
						}
					}
					#endregion
				}
			} else {
				sight173 = false
				#region Remove self from SCP 173 viewing list
				with(npc_scp173) {
					var isOnSlot = false
					var occupiedSlot = 0
					for (var i = array_length_1d(viewingEnts) -1; i > 0; --i) {
						if (viewingEnts[i] == other) {
							isOnSlot = true
							occupiedSlot = i
						}
					}
						
					if isOnSlot {
						viewingEnts[occupiedSlot] = noone
					}
				}
				#endregion
			}
		} else {
			sight173 = false
		}	
	}
	#endregion
}
#endregion

}

#region Collision
//COLLISION

if collision_line(x, y, x, y + vspeed, obj_wall, 0, 0) || collision_line(x, y, x, y + vspeed, prop_static, 0, 0) {
	vspeed = 0 x = xprevious
	vspeed -= 0.15
}
if collision_line(x, y, x + hspeed, y, obj_wall, 0, 0) || collision_line(x, y, x + hspeed, y, prop_static, 0, 0) {
	hspeed = 0 y = yprevious
	hspeed -= 0.15
}
#endregion
