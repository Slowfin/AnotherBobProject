if id == instance_find(objSaw,0) {

with objPlayer { 
	if place_meeting(x,y,objSaw) and  !global.respawn and state != states.died  {
			audio_play_sound(sndGotHit,1,false)
		if HP > 1 {
		objCamera.isShaking = true
		objCamera.shakePower = 2
		objCamera.alarm[0] = 10
		audio_play_sound(sndGotHit,1,false)
	canMove = false
	hsp = 0
	vsp = 0
	global.respawn = true
	HP -= 1
	state = states.normal
		}
	else {
		HP -= 1		
	}
}


if global.respawn  and global.fadeAlpha < 1 {
	canMove = false
	hsp = 0
	vsp = 0
	global.fadeAlpha += 0.06
} if !global.respawn and global.fadeAlpha > 0 {
	global.fadeAlpha -= 0.06
}



if global.fadeAlpha >= 1 and  global.respawn {
	x = respX
	y = respY
	state = states.normal
	objCamera.spawn = true
	global.respawn = false
	canMove = true
}
}
}