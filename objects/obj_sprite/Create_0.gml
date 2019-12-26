/*
The purpose of this object to serve as a way of objects drawing sprites on different layers.
If you want the obj_player to draw UI elements, for example, you'd spawn this object.
Keep in mind it has different behaviours, so you can use this to draw a sprite for a limited
amount of time, like in the blinking system. You can also create it once and keep track of it like with other
UI elements.
*/
// TODO (maybe): Is it a good idea to implement this to the inventory system?

#region Declared Variables
// These are expected to be defined by the object creator, since this object isnt supposed
// to be spawned on the room code.

// Is this a temporary sprite? (Will delete itself later)
isTemp = false
// How long until this sprite deletes itself
delTimer = 0

// What kind of behaviour does this sprite present?
/*
static - The sprite will do absolutely nothing.
fade - The sprite will slowely fade away and delete itself once its done fading
unfade - The sprite will slowely unfade and then become static
unfadedel - The sprite will do the same as above but will delete itself instead of going static
blink - The sprite will unfade and then fade away, deleting itself afterwards.

NOTES:
If you choose any behaviour that isnt static, the object will disregard the isTemp variable, and will delete
it self according to the behaviour. The same happens wen choosing to use temporary, the object will then
ignore the behaviour code and just proceed to wait for deletion.

There are also other stuff to be configured with the object, such as it's "hold time".
(The amount of time it stays on the screen with full opacity before it begins to fade away once again)
*/
behaviour = "static"

// The name of this object should a object need to find it this way or verify it's existance
// based on it's behaviour.
name = "spriteobject"

// The time the sprite will spend on each state (read more on Variables, below)
fadeTimer = 0
unfadeTimer = 0
holdTimer = 0

// Draw Type
/*
default - Uses draw_self()
rectangle - Draws a rectangle from point x1,y1 to point x2,y2.
*/
drawType = "default"

x1 = 0 
y1 = 0
x2 = 0
y2 = 0

// Should this sprite be drawn in a specific color?
color = c_white

#endregion
#region Variables
// Fade Status
// 0 - Unfading
// 1 - Holding
// 2 - Fading
fadeStat = 0

// Is this the first step of this object?
firstStep = true

// The image alpha
alpha = 1

// The alpha variations depending on the time it takes for each stage to progress
alphaVarFade = 0
alphaVarUnfade = 0
// The sprite to draw
sprite = spr_pink

#endregion