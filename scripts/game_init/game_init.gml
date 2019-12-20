// Global Variables
#macro g global

randomize()

#region Declarations
g.optionsHaveBeenChanged = false
g.localizationSentences = 0
g.sentence[0,0] = "NONE"

// options.ini
g.lang = "ENG"
#endregion

// Localization
ini_open("gameoptions.ini")
g.lang = ini_read_string("options","lang","ENG")
ini_close()

localization_load()

ini_close()