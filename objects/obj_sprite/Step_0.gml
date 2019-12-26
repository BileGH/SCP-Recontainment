#region First Step
if firstStep {
	behaviour = string_lower(behaviour)
	drawType = string_lower(drawType)
	alphaVarFade = alpha / fadeTimer
	alphaVarUnfade = alpha / unfadeTimer
	
	firstStep = false
}
#endregion

// Code to avoid errors
if (alpha > 1) {alpha = 1}
if (alpha < 0) {alpha = 0}

if (behaviour == "static") {
	#region Static
	// Temporary behaviour code
	if isTemp {
		if (delTimer <= 0) {
			instance_destroy(self)
		} else {
			--delTimer
		}
	} 
	#endregion
} else
if (behaviour == "fade") {
	#region Fade
	if (fadeStat == 0) {
		fadeStat++
	}
	if (fadeStat == 1) {
		if (holdTimer <= 0) {
			fadeStat++
		} else {
			--holdTimer
		}
	}
	if (fadeStat == 2) {
		if (fadeTimer <= 0) {
			if (image_alpha <= 0) {instance_destroy(self)} else {image_alpha -= 0.1}
		} else {
			--fadeTimer
			alpha -= alphaVarFade
		}
	}
	#endregion
} else
if (behaviour == "unfade") {
	#region Unfade
	if (fadeStat == 0) {
		if (unfadeTimer <= 0) {
			fadeStat++
			alpha = 1
		} else {
			alpha += alphaVarUnfade
			unfadeTimer--
		}
	}
	if (fadeStat == 1) {
		behaviour = "static"
	}
	#endregion
} else
if (behaviour == "unfadedel") {
	#region Unfade and Delete
	if (fadeStat == 0) {
		if (unfadeTimer <= 0) {
			fadeStat++
			alpha = 1
		} else {
			alpha += alphaVarUnfade
			unfadeTimer--
		}
	}
	if (fadeStat == 1) {
		instance_destroy(self)
	}
	#endregion
} else
if (behaviour == "blink") {
	#region Blink
	if (fadeStat == 0) {
		if (unfadeTimer <= 0) {
			fadeStat++
			alpha = 1
		} else {
			alpha += alphaVarUnfade
			unfadeTimer--
		}
	}
	if (fadeStat == 1) {
		if (holdTimer <= 0) {
			fadeStat++
		} else {
			holdTimer--
		}
	}
	if (fadeStat == 2) {
		if (fadeTimer <= 0) {
			if (image_alpha <= 0) {instance_destroy(self)} else {image_alpha -= 0.1}
		} else {
			fadeTimer--
			alpha -= alphaVarFade
		}
	}
	#endregion
}