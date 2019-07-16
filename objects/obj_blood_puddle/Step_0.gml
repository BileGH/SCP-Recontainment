if not Scale >= ToMeetScale {
	Scale += (ToMeetScale - Scale) * HowFastToScale

	image_xscale = Scale
	image_yscale = Scale
}
