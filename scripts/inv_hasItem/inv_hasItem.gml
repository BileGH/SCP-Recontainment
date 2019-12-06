var itm = argument0
if is_string(itm) {
	for (var i = 0; i < array_length_1d(inv); ++i) {
		if (inv[i] == itm) {
			return true
		}
	}
}
return false