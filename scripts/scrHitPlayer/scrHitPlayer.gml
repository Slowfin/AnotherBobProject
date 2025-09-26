// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrHitPlayer(){
	
	if place_meeting(x,y,objPlayer) and objPlayer.canGetHit and !objEnemy {
			objPlayer.HP -= 1  	
			objPlayer.invincFrames = objPlayer.invincFramesSet
			objCamera.alarm[0] = 5
			objCamera.isShaking = true
			objCamera.shakePower = 2
		}
	
}