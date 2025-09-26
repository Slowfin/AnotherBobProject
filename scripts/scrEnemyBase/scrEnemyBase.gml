// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrEnemyBase(){
		

		scrPlayerCollision()

		
				if knockback and state != statesEnemy.knockback {
		state = statesEnemy.knockback
				}     
				
		
		if HP <= 0 {
			instance_destroy()	
		}
		
		if gotHit {
			image_blend = c_grey
		} else { 
			image_blend = c_white
		}
		
		//scrHitPlayer()
		
		
}