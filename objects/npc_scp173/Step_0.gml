event_inherited()

var seen = false
for (var i = 0; i < array_length_1d(viewingEnts)-1; ++i) {
	if viewingEnts[i] != noone {seen = true}
}

if seen {canMove = false} else {canMove = true}

if thinking {
	
}