// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossPreAttack(){
	
				vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()	
	
	if x > objPlayer.x {
		image_xscale = -1	
	} else {
		image_xscale = 1	
	}
	
		
	sprite_index  = sprBossPreRun
	
	sp = lerp(sp, 1, 0.05)
		
	timeToAttack -= 1 
	
	if timeToAttack <= 0  {
		state = statesBoss.attack
		attackType = irandom(1)
		if x > objPlayer.x {
			hsp = -1	
		} else {
			hsp = 1
		}
		}
}