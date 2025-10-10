// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrEnemyAttack(){
	
			vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()	
	hsp = 0
	if attackTime >= 20 {
		sprite_index  = sprEnemyPreattack
	}
	else {
		//if once = 1 {
		//var attackHitbox = instance_create_layer(x,y,"Enemies", objAttackHitbox)
		//attackHitbox.follow = self
		//attackHitbox.xoff = 15
		//attackHitbox.yoff = 0
		//attackHitbox.lifetime = 10	
		//once = 0
		//}
		sprite_index  = sprEnemyAttack
	}
	
	
		
	attackTime -= 1     
	
	if attackTime <= 0  {
		state = statesEnemy.alert	
		attackCd = attackCdSet
		attackType = irandom(1)
		}
}