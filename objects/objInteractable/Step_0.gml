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