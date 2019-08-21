if MTFTouchedTimer > 2 {
	if Opening = 0 {
		if Open = 0 {
			image_speed = ToImageSpeed alarm[0] = HowLongToOpen Opening = 1
		}
	}
}
else {
	MTFTouchedTimer = round(HowLongToOpen*9)
}
