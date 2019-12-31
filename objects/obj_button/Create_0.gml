#region Variables to be set by another object.
firstStep = true // Is it the first step of this object?
text = undefined // The text to draw
textOffsetX = 0 // The text X offset
textOffsetY = 0 // The text Y offset
hasText = false // If the button has text or not
font = undefined // The font to draw if the button has text
mouseTrigger = undefined // The mouse button that triggers this button.
enableSprite = true // If sprite drawing is enabled
autoDel = false // If this object should auto delete itself if parent object dies.
deleteWith = noone // The parent object for auto deletion
attached = false // If this object is attached to another clickable object
attachedTo = noone // The object to follow the canClick state
centralized = true // If the text is centralized on the spot
#endregion

#region Variables for outside reference
mouseOver = false
mousePressing = false
triggered = false
#endregion

#region Other
interactTimer = 0
interactTime = 30
canClick = true
#endregion