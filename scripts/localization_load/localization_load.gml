var file = "Localization\\" + g.lang + ".ini"

g.localizationSentences = 0
show_debug_message("Loading localization... " + file)
ini_open(file)

g.l_current = ini_read_string("info","language","ERROR LANGUAGE")
var c = ini_read_string("info","complete","false")
if (c == "true") {g.l_complete = true} else {g.l_complete = false; show_debug_message("Incomplete Language selected.")}
#region Localization Words
localization_add("loading0")
localization_add("loading1")
localization_add("loading2")
localization_add("loading3")
localization_add("loading4")
#endregion
ini_close()

