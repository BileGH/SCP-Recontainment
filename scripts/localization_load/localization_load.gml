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

localization_add("getitem")
localization_add("keycardneeded")
localization_add("keycardnothing")

var i = "item_"
localization_add(i + "empty")
localization_add(i + "weapon_scar")
localization_add(i + "weapon_9mm")
localization_add(i + "paper_173")
var b = "button_"
localization_add(b + "newgame")
localization_add(b + "options")
localization_add(b + "load")
localization_add(b + "exit")
#endregion
ini_close()

