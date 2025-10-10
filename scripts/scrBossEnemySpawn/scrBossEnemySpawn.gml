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
		slime.hsp = -1       
		slime.vsp = -7
		slime.sp = 0.5
		slime.bossed = true
	}
		
	attackTime -= 1     
	
	if attackTime <= 0  {
		state = statesBoss.idle	
		attackCd = attackCdSet * 2
		attackType = irandom(1)
		}
}