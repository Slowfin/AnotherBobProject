// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossIdle(){
	
			vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()	
	sp = lerp(sp, 0, 0.1)
		sprite_index  = sprBoss
		
	attackCd -= 1  
	
	if attackCd  <= 0  {
		if attacksToSpawn  <= 0 {
		attacksToSpawn = 5
		bullets = 0
		attackCd = attackCdSet
		attackTime = 30
		timeToAttack = 30
		state = statesBoss.enemySpawn
		} else if attackType == 0 {
		attackCd = attackCdSet
		attackTime = irandom_range(150,200)
		timeToAttack = 30
		state = statesBoss.preattack
		sp = 0
		if x > objPlayer.x {
			hsp = -1	
		} else {
			hsp = 1
		}
		} else if attackType == 1 {
		bullets = 0
		attackCd = attackCdSet
		attackTime = 30
		timeToAttack = 30
		state = statesBoss.attack2
		}
		}
}