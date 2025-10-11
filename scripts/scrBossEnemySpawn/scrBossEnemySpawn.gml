// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossEnemySpawn(){
	
			vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()	
	
		
	sprite_index  = sprBossAttack
	
	for (var i = 0; bullets < 1; bullets += 1) {
		var slime = instance_create_layer(x,y-20,"Enemies",objEnemySlime)
		slime.hsp = 0      
		slime.vsp = -5
		slime.sp = 0.1
		slime.bossed = true
		slime.state = statesEnemy.walk
		slime.jump = true 
		if bullets == 0 {
			audio_play_sound(sndBossShoot,1.5,false,1,0,random_range(0.9,1.1))	
		}
	}
		
	attackTime -= 1     
	
	if attackTime <= 0  {
		state = statesBoss.idle	
		attackCd = attackCdSet * 2
		attackType = irandom(1)
		}
}