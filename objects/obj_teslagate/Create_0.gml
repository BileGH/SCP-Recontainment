image_speed = 0

#region Sprite Vertices
// Sprite Positioning
var amountX = sprite_width / 2
var amountY = sprite_height / 2

x1 = x-amountX
y1 = y-amountY

x2 = x+amountX
y2 = y-amountY

x3 = x+amountX
y3 = y+amountY

x4 = x-amountX
y4 = y+amountY

#endregion
#region SOUND REWRITE
// This is the beginning of the new code rewrite.
windSoundPlaying = false;
chargeSoundPlaying = false;
buzzSoundPlaying = false;

#endregion
#region Variables
// If tesla gate is active.
active = true

// Controls sprite drawing and other functions.
// 0: Horizontal (Default), 1: Vertical
// orientation = 0 (Has been moved to the GMS built-in "Variables" function on the object. Access this variable by there.)

// State of the tesla gate. The cycle is (2-3-4 Repeat)
// 0: Idle, 1: Buzz, 2: Charge (Wind up), 3: Firing (Dealing damage), 4: Cooling
state = 0

// Timer for changing states.
changeStateTimer = 0

// Distance from wich tesla starts buzzing.
buzzDistance = 480

// Distance at wich it begins to charge and enter state 2.
chargeDistance = 380

// Sound "loops" based on timers.
buzzSoundTimer = 0

// Timer for winding up
windTimer = 0

// Timer for firing the tesla.
fireTimer = 0

// Timer for cooling down.
coolTimer = 0

// Timer for activating or deactivating tesla gate.
activationTimer = 0

// State for activation or deactivation
// 0: Idle 1: In-Transition.
activationState = 0

// Lethal distance of the tesla gate.
killDistance = 60

// Is this Tesla firing?
firing = false

// The interaction range of this object.
interactionRange = buzzDistance - 20

// Timer for the tesla gate to reactivate itself
reactivationTimer = 0

// Time it takes (in seconds) for the tesla to come back online wen the above timer expires.
timeToReactivate = 60

#endregion

#region Macros
// "Self-Explanatory" Macros
#macro plyExists (instance_exists(obj_player))
#macro plyIsWithinChargeDistance (distance_to_point(obj_player.x,obj_player.y)<chargeDistance)
#macro plyIsWithinBuzzDistance (distance_to_point(obj_player.x,obj_player.y)<buzzDistance)
#macro plyIsWithinInteractionDistance (distance_to_point(obj_player.x, obj_player.y)<interactionRange)
#macro resetTimers changeStateTimer = 0 buzzSoundTimer = 0 fireTimer = 0 windTimer = 0 coolTimer = 0

#macro setWindTimer resetTimers windTimer = floor(room_speed * 1.22)
#macro setBuzzSoundTimer resetTimers buzzSoundTimer = floor(room_speed * 1.8)
#macro setCoolTimer resetTimers coolTimer = floor(room_speed * 1)
#endregion
