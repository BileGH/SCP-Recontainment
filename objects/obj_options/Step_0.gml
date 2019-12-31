with (chkboxTest) {
	if triggered {
		triggered = false
		if (other.chkboxTestChecked) {
			other.chkboxTestChecked = false
			text = "False"
			sprite_index = spr_checkbox
		} else {
			other.chkboxTestChecked = true
			text = "True"
			sprite_index = spr_checkedbox
		}
	}
}

with (listTest) {
	if triggered {
		triggered = false
		text = other.listTestOptions[other.listTestSelected]
		if (other.listTestSelected + 1 > array_length_1d(other.listTestOptions)-1) {
			other.listTestSelected = 0
		} else {
			other.listTestSelected++
		}
	}
}

with (btnClose) {
	if triggered || keyboard_check(vk_escape) {
		triggered = false
		instance_destroy(other)
	}
}