if place_meeting(x,y,objPlayer) and !global.roomShift and global.fadeAlpha <= 0 {
	if activated == 0 or (activated == 1 and objPlayer.key_interact) {
		global.roomShift = true
		objPlayer.nextX = nextX
		objPlayer.nextY = nextY
		objPlayer.nextRoom = nextRoom
	}
}

if id == instance_find(objRoomChange,0) {
	
	
	
if global.roomShift  and global.fadeAlpha < 1 {
	objPlayer.canMove = false
	objPlayer.hsp = 0
	objPlayer.vsp = 0
}

if global.roomShift  and global.fadeAlpha < 1 {
	global.fadeAlpha += 0.06
} if !global.roomShift and global.fadeAlpha > 0 {
	global.fadeAlpha -= 0.06
}


}

if global.fadeAlpha >= 1 and global.roomShift {
	room_goto(objPlayer.nextRoom)
	objPlayer.x = objPlayer.nextX
	objPlayer.y = objPlayer.nextY
	objCamera.x = objPlayer.nextX + 10000
	objCamera.y = objPlayer.nextY - 90
	objCamera.spawn = true
	audio_stop_sound(musTV1)
	audio_stop_sound(musTV2)
	audio_stop_sound(musBoss1)
	global.roomShift = false
	objPlayer.canMove = true
}



