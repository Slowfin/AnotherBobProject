if id == instance_find(objSaw,0) {

with objPlayer { 
	if place_meeting(x,y,objSaw) and  !global.respawn and state != states.died  {
		if HP <= 1 {
			audio_play_sound(sndGotHit,1,false,1,0,0.6)
		}	else {		
			audio_play_sound(sndGotHit,1,false,1,0,random_range(0.9,1.1))
		}
		if HP > 1 {
		objCamera.isShaking = true
		objCamera.shakePower = 2
		objCamera.alarm[0] = 10

	canMove = false
	hsp = 0
	vsp = 0
	global.respawn = true
	HP -= 1
		}
	else {
		HP -= 1		
	}
}


if global.respawn  and global.fadeAlpha < 1 {
	canMove = false
	hsp = 0
	vsp = 0
	sp = 0
	global.fadeAlpha += 0.03
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