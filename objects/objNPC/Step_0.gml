var outline = layer_get_id("InteractableOutline")
var noOutline = layer_get_id("Interactable")

if place_meeting(x,y,objPlayer) {
	layer = outline
} else {
	layer = noOutline
}

if type = "NPC"  {
	if x > objPlayer.x  {
		image_xscale = -1	
	}
	else {
		image_xscale = 1
	}
}

if global.dialogue and objDialogue.messageDraw != objDialogue.message[objDialogue.messageCount] {
	image_speed = objDialogue.textSp*7
} else if global.dialogue and objDialogue.messageDraw == objDialogue.message[objDialogue.messageCount]  {
	image_speed = 0.6
} else if !global.dialogue {
	image_speed = 1
}	