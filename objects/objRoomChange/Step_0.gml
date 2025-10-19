if place_meeting(x,y,objPlayer) {
	if activated == 0 or (activated == 1 and objPlayer.key_interact) {
	room_goto(nextRoom)
	objPlayer.x = nextX
	objPlayer.y = nextY
	objCamera.x = nextX + 10000
	objCamera.y = nextY - 90
	objCamera.spawn = true
	audio_stop_sound(musTV1)
	audio_stop_sound(musTV2)
	audio_stop_sound(musBoss1)
	}
}