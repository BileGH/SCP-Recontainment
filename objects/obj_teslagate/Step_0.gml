// Update Timers
if (changeStateTimer > 0) {--changeStateTimer}
if (buzzSoundTimer > 0) {--buzzSoundTimer}
if (fireTimer > 0) {--fireTimer}
if (windTimer > 0) {--windTimer}
if (coolTimer > 0) {--coolTimer}

if (active) {
	switch(state) {
		case 0:
		// ==================================== Idle State ====================================
		
		// Get triggered by player. (TODO: trigger by NPC)
		if (instance_exists(obj_player)) {
			if ((distance_to_point(obj_player.x,obj_player.y)<buzzDistance)) {
				state = 1	
			}
		}
		
		
		break;
		
		case 1:
		// ==================================== Buzz State =============================================
		
		// Play buzz sounds
		// TODO: Not play globally?
		
		// Play buzz sound and check if player is still within range or has moved closer
		if (buzzSoundTimer <= 0) {
			if(instance_exists(obj_player)) {
				if plyIsWithinChargeDistance {
					// Player has moved within charge distance.
					audio_play_sound(snd_tesla_windup,1,false)
					setWindTimer
					state = 2
				} else if plyIsWithinBuzzDistance {
					// Player is still within buzz distance. Just replay file.
					audio_play_sound(snd_tesla_idle,1,false)
					setBuzzSoundTimer // Note: File takes 2 seconds to end completely.
				}
			} else {
				state = 0
			}
			
		}
		
		
		case 2:
		// ==================================== Charge State ====================================
		
		// Wind up and fire
		
		if (windTimer <= 0) {
			if (instance_exists(obj_player)) {
				if plyIsWithinChargeDistance {
					if (fireTimer <= 0) {
						audio_play_sound(snd_tesla_shock,1,false)
						fireTimer = 12 // 12 steps of damage and shock effects.
						state = 3
					}
				} else if plyIsWithinBuzzDistance {
					state = 1
				} else {
					state = 0
				}
			}
		}
		
		break;
		
		case 3:
		// ==================================== Fire Sate ====================================
		
		// Fire until cooldown.
		if (fireTimer > 0) {
			firing = true
			if (instance_exists(obj_player)) {
				if (distance_to_object(obj_player)<40) {
					with(obj_player) {instance_destroy()}
				}
			}
			var npc = instance_nearest(x,y,npc_mtf)
			if (distance_to_object(npc)<killDistance) {
				with(npc) {instance_destroy()}
			}
			
			
		} else {
			firing = false
			setCoolTimer
			state = 4
		}
		break;
		
		case 4:
		// ==================================== Cooling State ====================================
		
		// Reset tesla after cooling.
		if (coolTimer > 0) {
			
		} else {
			state = 0
		}
		
		
		break;
	}
}