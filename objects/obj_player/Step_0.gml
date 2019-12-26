#region First Step
if firstStep {
	// TODO: Update key binds
	firstStep = false
}
#endregion

#region Timers
if (flashTimer > 0) {--flashTimer}
if (interactionTimer > 0) {--interactionTimer}
#endregion

#region Stats
if (hp <= 0) {isAlive = false} else {isAlive = true}

#endregion


if isAlive {
	#region Code to run only when alive
	if instance_exists(blood) {
		instance_destroy(blood)
		blood = noone
	}
	#region Blinking

	if keyboard_check(vk_lalt) {
		blinking = true
		canOpenInv = false
		blinkTimer = blinkTime
		if instance_exists(spriteObject) {
			with(spriteObject) {
				delTimer = 5
			}
		}
	}

	if blinking {
		canOpenInv = false
		if !instance_exists(spriteObject) {
			spriteObject = instance_create_layer(x,y,"UI",obj_sprite)
			with (spriteObject) {
				behaviour = "static"
				color = c_black
				drawType = "rect"
				isTemp = true
				delTimer = 5
				x1 = camera_get_view_x(view_camera[0])
				y1 = camera_get_view_y(view_camera[0])
				x2 = x1 + view_wport[0]/2
				y2 = y1 + view_hport[0]/2
			}
		}
	} else {
		canOpenInv = true
	}

	#region NPC Blink Code Copy
	// NPC Behaviour copy
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

	#endregion

	#region Visibility


	#region NPC Visibility Code Copy
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
		#region 173 Visibility
		// 173 Code
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
						for (var i = array_length_1d(viewingEnts) - 1; i > 0; --i) {
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
				}
			} else {
				sight173 = false
			}
		} else {
			sight173 = false
		}	
		#endregion
	}
	#endregion


	#endregion

	#region Movement
	if keyboard_check(vk_shift) {
		running = true
		var spd = 4
	} else {
		running = false
		var spd = 2
	}
	if canMove {
		if (keyboard_check(ord("W"))) {
			vspeed -= spd;
			moving = true
		}
		if (keyboard_check(ord("S"))) {
			vspeed += spd;
			moving = true
		}
		if (keyboard_check(ord("D"))) {
			hspeed += spd;
			moving = true
		}
		if (keyboard_check(ord("A"))) {
			hspeed -= spd;
			moving = true
		}
	
		image_angle = point_direction(x,y, mouse_x ,mouse_y);
	
		if speed > 0 {
			speed -= speed / 6
		} else {
			speed = 0
		}
	} else {
		moving = false
		if speed > 0 {
			speed -= 1
		} else {
			speed = 0
		}
	}
	#endregion
	
	#region Interaction

	interactTarget = instance_nearest(mouse_x,mouse_y,obj_interactable)

	if keyboard_check(interactKey) {
		if (interactionTimer <= 0) {
			interactionTimer = interactionTime
			if instance_exists(interactTarget) {
				if (distance_to_object(interactTarget) < interactTarget.interactDistance) {
					with interactTarget {
						interactCaller = other
						interact = true
					}
				}
			}
		}
	}
	#endregion

	#region Inventory

	if (canOpenInv) {
		if keyboard_check(invOpenKey) {
			if (interactionTimer <= 0) {
				interactionTimer = interactionTime
				if hasInvOpen {
					hasInvOpen = false
					pause = false
					window_mouse_set(mxprev,myprev)
					if instance_exists(inventoryObj) {instance_destroy(inventoryObj)}
				} else {
					hasInvOpen = true
					pause = true
					mxprev = window_mouse_get_x()
					myprev = window_mouse_get_y()
					inventoryObj = instance_create_layer(x,y,"UI3",obj_inventory)
				}
			}
		}
	
	
		if hasInvOpen {
			canMove = false
		} else {
			canMove = true
		}
	}


	#endregion

	#region Hotbar
	if keyboard_check_pressed(ord("1")) {
		htbrsl = 1
	} else
	if keyboard_check_pressed(ord("2")) {
		htbrsl = 2
	} else
	if keyboard_check_pressed(ord("3")) {
		htbrsl = 3
	} else
	if keyboard_check_pressed(ord("4")) {
		htbrsl = 4
	}
	#endregion

	#region Shooting
	if (fireTimer <= 0) {
		if mouse_check_button(mb_left) {
			fireTimer = fireInterval
			switch(inv[htbrsl]) {
				case "weapon_scar":
				audio_play_sound(snd_hg_shot,1,false)
				var dir = point_direction(x,y,mouse_x,mouse_y)
				var bullet = instance_create_layer(x + lengthdir_x(32,dir + 6),y+ lengthdir_y(32,dir + 6),"Bullets",obj_bullet)
				with bullet {
					direction = point_direction(x,y,mouse_x,mouse_y)
				}
				break
				case "weapon_9mm":
				audio_play_sound(snd_hg_shot,1,false)
				var dir = point_direction(x,y,mouse_x,mouse_y)
				var bullet = instance_create_layer(x + lengthdir_x(32,dir + 6),y+ lengthdir_y(32,dir + 6),"Bullets",obj_bullet)
				with bullet {
					direction = point_direction(x,y,mouse_x,mouse_y)
				}
				break
			}
		}
	} else {
		--fireTimer
	}
	#endregion
	
	#endregion
} else {
	#region Code to run only when dead
	image_index = spr_player_dead
	if !instance_exists(blood) {
		blood = instance_create_layer(x,y,"Bottom_Layer",obj_blood_puddle)
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

#region Debug
if keyboard_check(ord("P")) and debug_mode {instance_place(mouse_x,mouse_y,self)}
#endregion

