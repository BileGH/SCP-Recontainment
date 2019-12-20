loading = true

game_init()

// Spawn debug console
instance_create_depth(0,0,0,obj_console)
loadStage = 0
finalStage = 4
loadText = "Loading..."

centerX = (room_width/2)
centerY = (room_height/2) + 256