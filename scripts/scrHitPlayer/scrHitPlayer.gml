// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrHitPlayer(){
	if place_meeting(x,y,objPlayer) and objPlayer.canGetHit and objPlayer.state != states.knockback{
		//and !objEnemy
			objPlayer.HP -= 1  	
			objPlayer.invincFrames = objPlayer.invincFramesSet
			objCamera.alarm[0] = 5
			objCamera.isShaking = true
			objCamera.shakePower = 5
			objPlayer.knockbackx = x
			objPlayer.knockbacky = y
			objPlayer.alarm[2] = 20
			objPlayer.savedState = objPlayer.state
			audio_play_sound(sndGotHit,1,false)
			if  objPlayer.HP > 0 {
			objPlayer.state = states.knockback
			}
		}
	
}