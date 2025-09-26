if place_meeting(x,y,objWall) {
	instance_destroy()	
	objPlayer.x = x
	objPlayer.y = y
	objPlayer.jumps = 0
	objPlayer.vsp = -3
}