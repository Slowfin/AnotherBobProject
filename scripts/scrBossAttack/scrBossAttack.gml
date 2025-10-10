// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossAttack(){
	
			vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()	
	
	sp = basicSp
	
	if place_meeting(x+hsp*5,y,objWall) or !place_meeting(x+hsp*5,y+1,objWall) {
			hsp *= -1	
			objCamera.shakePower = 2
			objCamera.alarm[0] = 5
			objCamera.isShaking = true
		}
		
	if hsp > 0 {
		image_xscale = 1	
	} else if hsp < 0 {
		image_xscale  = -1	
	}
		
		sprite_index  = sprBossRun
		
	attackTime -= 1     
	
	if attackTime <= 0  {
		state = statesBoss.idle	
		attackCd = attackCdSet
		attackType = irandom(1)
		}
}