image_speed = 0

// If tesla gate is active.
active = true

// Controls sprite drawing and other functions.
// 0: Horizontal (Default), 1: Vertical
orientation = 0

// State of the tesla gate. The cycle is (2-3-4 Repeat)
// 0: Idle, 1: Buzz, 2: Charge (Wind up), 3: Firing (Dealing damage), 4: Cooling
state = 0

// Timer for changing states.
changeStateTimer = 0

// Distance from wich tesla starts buzzing.
buzzDistance = 360

// Distance at wich it begins to charge and enter state 2.
chargeDistance = 240

// Sound "loops" based on timers.
buzzSoundTimer = 0

// Timer for winding up
windTimer = 0

// Timer for firing the tesla.
fireTimer = 0

// Timer for cooling down.
coolTimer = 0

// Lethal distance of the tesla gate.
killDistance = 40

// Is this Tesla firing?
firing = false

// "Self-Explanatory" Macros
#macro plyIsWithinChargeDistance (distance_to_point(obj_player.x,obj_player.y)<chargeDistance)
#macro plyIsWithinBuzzDistance (distance_to_point(obj_player.x,obj_player.y)<buzzDistance)
#macro resetTimers changeStateTimer = 0 buzzSoundTimer = 0 fireTimer = 0 windTimer = 0 coolTimer = 0 

#macro setWindTimer resetTimers windTimer = floor(room_speed * 1.22)
#macro setBuzzSoundTimer resetTimers buzzSoundTimer = floor(room_speed * 1.8)
#macro setCoolTimer resetTimers coolTimer = floor(room_speed * 0.25)