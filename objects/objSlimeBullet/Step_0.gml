vsp += grv
y += vsp

if place_meeting(x,y,objWall) {
	instance_destroy()	
	objCamera.shakePower = 1
	objCamera.alarm[0] = 5
	objCamera.isShaking = true
}


	scrHitPlayer()	

x += hsp * sp

rot += hsp * sp * 3