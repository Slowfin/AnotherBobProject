if place_meeting(x,y,objPlayer) {
	room_goto(nextRoom)
	objPlayer.x = nextX
	objPlayer.y = nextY
	objCamera.x = nextX + 10000
	objCamera.y = nextY - 90
	objCamera.spawn = true
	
}