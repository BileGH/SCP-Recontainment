#region First Step
if firstStep {
	#region Update Sprite Vertices
	if (orientation == 0) {
		var amountX = sprite_width / 2
		var amountY = sprite_height / 2
	} else {
		var amountX = sprite_height / 2
		var amountY = sprite_width / 2
	}

	x1 = x-amountX
	y1 = y-amountY

	x2 = x+amountX
	y2 = y-amountY

	x3 = x+amountX
	y3 = y+amountY

	x4 = x-amountX
	y4 = y+amountY
	#endregion
	#region Create Lights	
	
	FL = instance_create_layer(x,y,"Lights",light_generic) // Field Light
	
	with (FL) {
		Light_Type = "Point Light"
		Light_Shadow_Length = 64
		Light_Color = $FFFFFF1C
		Light_Range = 256
		Light_Intensity = 0
	}
	
	
	if (orientation == 0) {
		var rpx = x - lengthdir_x(sprite_width,0)/2
		var rpy = y
	} else {
		var rpx = x
		var rpy = y - lengthdir_y(sprite_width,90)/2
	}
	
	RL_1 = instance_create_layer(rpx,rpy,"Lights",light_generic) // Reactor Light 1
	with (RL_1) {
		Light_Type = "Point Light"
		Light_Shadow_Length = 32
		Light_Color = $FFFFFF1C
		Light_Range = 64
		Light_Intensity = 4.5
	}
	
	if (orientation == 0) {
		var rpx = x + lengthdir_x(sprite_width,0)/2
		var rpy = y
	} else {
		var rpx = x
		var rpy = y + lengthdir_y(sprite_width,90)/2
	}
	
	RL_2 = instance_create_layer(rpx,rpy,"Lights",light_generic) // Reactor Light 2
	with (RL_2) {
		Light_Type = "Point Light"
		Light_Shadow_Length = 32
		Light_Color = $FFFFFF1C
		Light_Range = 64
		Light_Intensity = 4.5
	}
	
	#endregion
	firstStep = false
}
#endregion

#region Timer Handling
// Update Timers
if (changeStateTimer > 0) {--changeStateTimer}
if (fireTimer > 0) {--fireTimer}
if (windTimer > 0) {--windTimer}
if (activationTimer > 0) {--activationTimer}
if (reactivationTimer > 0) {--reactivationTimer}

if !(active) && (reactivationTimer <= 0) {
	active = true
}
#endregion

#region If tesla is active
if (active) {
	switch(state) {
		case 0:
		#region Idle State
		// ==================================== Idle State ====================================
		
		// Get triggered by player. (TODO: trigger by NPC)
		if (instance_exists(obj_player)) {
			if plyIsWithinBuzzDistance {
				state = 1	
			}
		}
		
		
		break;
		#endregion
		case 1:
		#region Buzz State
		// ==================================== Buzz State =============================================
		
		// Play buzz sounds
		// TODO: Not play globally?
		
		// Play buzz sound and check if player is still within range or has moved closer
		if plyIsWithinChargeDistance {
			// Player has moved within charge distance
			if !waitingAudioEnd {
				if !audio_is_playing(snd_tesla_windup) {
					audio_play_sound(snd_tesla_windup,1,false)
					waitingAudioEnd = true
				}
			}
			
			if waitingAudioEnd {
				if !audio_is_playing(snd_tesla_windup) {
					state = 2
					waitingAudioEnd = false;
				}
			}
		} else if plyIsWithinBuzzDistance {
			// Player is still within buzz distance. Just replay file.
			if !audio_is_playing(snd_tesla_idle) {
				audio_play_sound(snd_tesla_idle,1,false)
			}
		} else {
			state = 0
		}
		
		break;
		#endregion
		case 2:
		#region Charge State
		// ==================================== Charge State ====================================
		
		// Wind up and fire
		
		if (windTimer <= 0) {
			if plyExists {
				if (fireTimer <= 0) {
					audio_play_sound(snd_tesla_shock,1,false)
					fireTimer = 12 // 12 steps of damage
					state = 3
				}
			}
		}
		
		break;
		#endregion
		case 3:
		#region Fire State
		// ==================================== Fire Sate ====================================
		
		// Fire until cooldown.
		if (fireTimer > 0) {
			firing = true
			with (FL) {
				light[| eLight.Intensity] = irandom_range(0,Light_Intensity)
				light[| eLight.Flags] |= eLightFlags.Dirty
			}
			if plyExists {
				if point_in_rectangle(obj_player.x,obj_player.y,x1,y1,x3,y3) {
					with(obj_player) {instance_destroy()}
				}
			}
			
			
			
			var npc = instance_nearest(x,y,npc_mtf);
			if instance_exists(npc) {
				if point_in_rectangle(npc.x,npc.y,x1,y1,x3,y3) {
					with(npc) {instance_destroy()}
				}
			}
			var npc = instance_nearest(x,y,npc_dclass);
			if instance_exists(npc) {
				if point_in_rectangle(npc.x,npc.y,x1,y1,x3,y3) {
					with(npc) {instance_destroy()}
				}
			}
			
			
			
			
		} else {
			firing = false
			setCoolTimer
			state = 4
		}
		break;
		#endregion
		case 4:
		#region Cooling State
		// ==================================== Cooling State ====================================
		
		// Reset tesla after cooling.
		if (coolTimer > 0) {
			--coolTimer
		} else {
			state = 0
		}
		break;
		#endregion
	}
}
#endregion

#region Deactivation
if (activationState == 1) {
	if (activationTimer <= 0) {
		if (active) {
			var snd = irandom_range(1,3)
			switch(snd) {
				case 1: audio_play_sound(q_intercom_tesla1,1,false); break;
				case 2: audio_play_sound(q_intercom_tesla2,1,false); break;
				case 3: audio_play_sound(q_intercom_tesla3,1,false); break;
			}
			active = false
			activationState = 0
			reactivationTimer = room_speed * timeToReactivate
		} else {
			active = true
			activationState = 0
		}
	}
}
#endregion

#region Interaction
if interact {
	if (activationTimer <= 0) {
		if (activationState == 0) {
			activationTimer = room_speed * 8
			activationState = 1
			if (active) {audio_play_sound(q_player_tesla0,2,false)}
		}
	}
}
#endregion

event_inherited()