var arg1 = argument0
var found = false
if !is_string(arg1) {return "ERRSTRING"}

for (var i = 0; i < g.localizationSentences + 1; ++i) {
	if (arg1 == g.sentence[i,0]) {
		found = true
		return g.sentence[i,1];
		break;
	}
}

if !found {return "NOENTRY"}

