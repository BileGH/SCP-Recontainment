ini_open("gameoptions.ini")
global.lang = ini_read_string("options","lang","ENG")
global.gpreset = ini_read_string("graphics","preset","ultra")
var li = ini_read_string("graphics","lightingenabled","true")

if (li == "true") {global.lighting = 1} else {global.lighting = 0}

ini_close()