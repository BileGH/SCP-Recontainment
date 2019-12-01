// Load items
inv_items()

var item = argument0
if !is_string(item) {exit}

var result = 0

for (var i = 0; i < array_length_1d(items); ++i) {
	if (item == items[i]) {
		result = i
	}
}
return result
