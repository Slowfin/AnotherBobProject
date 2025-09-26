scrGetControls()

var outline = layer_get_id("InteractableOutline")
var noOutline = layer_get_id("Interactable")

if place_meeting(x,y,objPlayer) {
	layer = outline
} else {
	layer = noOutline
}


if place_meeting(x,y,objPlayer) and key_interact {
room_goto(Room1)
objPlayer.x = 16
objPlayer.y = 191
}