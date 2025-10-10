// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossEnemySpawn(){
	
			vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()	
	

	if attackTime >= 20 {
		hsp = 0
		sprite_index  = sprEnemyPrejump
	}
	else {
		if once == 1 {
			hsp = hspSet
			vsp  = -4
			jump = true
			once = 0
		}
		sprite_index  = sprEnemyJump
	}
	
		if jump {
			sp = basicSp * 4
		}
		
	attackTime -= 1     
	if place_meeting(x,y+1,objWall) and jump and attackTime < 18 {
				jump = false
				state = statesEnemy.alert	
		attackCd = attackCdSet
		attackType = irandom(1)
			}
	
	//if attackTime <= 0  {
	//	state = statesEnemy.alert	
	//	attackCd = attackCdSet
	//	attackType = irandom(1)
	//	jump  = false
	//	}
}