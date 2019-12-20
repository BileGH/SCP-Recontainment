var arg = argument0
if !is_string(arg) {exit}
result = ini_read_string("lang",string(arg)	,"ERROR")
++g.localizationSentences
g.sentence[g.localizationSentences,0] = arg
g.sentence[g.localizationSentences,1] = result

