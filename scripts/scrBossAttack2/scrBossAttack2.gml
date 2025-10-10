// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrBossAttack2(){
	
				vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()	
	
		
	sprite_index  = sprBossAttack
	
	for (var i = 0; bullets < 6; bullets += 1) {
		var bullet = instance_create_layer(x,y-20,"Enemies",objSlimeBullet)
		if bullet == 0 {
		bullet.hsp = -1       
		bullet.vsp = -2
		bullet.sp = 0.5
		} else if bullet == 1 {
		bullet.hsp = 1
		bullet.vsp = -2	
		bullet.sp = 0.5
		} else {
		bullet.hsp = choose(1,-1)
		bullet.vsp = random_range(-4,-6)
		}
	}
		
	attackTime -= 1     
	
	if attackTime <= 0  {
		state = statesBoss.idle	
		attackCd = attackCdSet
		attackType = irandom(1)
		}
}