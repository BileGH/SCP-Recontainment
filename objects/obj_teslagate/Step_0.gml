// Update Timers
if (changeStateTimer > 0) {--changeStateTimer}
if (buzzSoundTimer > 0) {--buzzSoundTimer}
if (fireTimer > 0) {--fireTimer}
if (windTimer > 0) {--windTimer}
if (activationTimer > 0) {--activationTimer}
if (reactivationTimer > 0) {--reactivationTimer}

if !(active) && (reactivationTimer <= 0) {
	active = true
}



if (active) {
	switch(state) {
		case 0:
		// ==================================== Idle State ====================================
		
		// Get triggered by player. (TODO: trigger by NPC)
		if (instance_exists(obj_player)) {
			if plyIsWithinBuzzDistance {
				state = 1	
			}
		}
		
		
		break;
		
		case 1:
		// ==================================== Buzz State =============================================
		
		// Play buzz sounds
		// TODO: Not play globally?
		
		// Play buzz sound and check if player is still within range or has moved closer
		if plyIsWithinChargeDistance {
			// Player has moved within charge distance
			audio_play_sound(snd_tesla_windup,1,false)
			setWindTimer
			state = 2
		} else if plyIsWithinBuzzDistance {
			// Player is still within buzz distance. Just replay file.
			if (buzzSoundTimer <= 0) {
				audio_play_sound(snd_tesla_idle,1,false)
				setBuzzSoundTimer
			}
		} else {
			state = 0
		}
		
		break;
		
		case 2:
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
		
		case 3:
		// ==================================== Fire Sate ====================================
		
		// Fire until cooldown.
		if (fireTimer > 0) {
			firing = true
			if plyExists {
				if plyIsWithinKillDistance {
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
			--coolTimer
		} else {
			state = 0
		}
		
		
		break;
	}
}

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