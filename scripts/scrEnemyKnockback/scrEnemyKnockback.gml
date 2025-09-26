// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrEnemyKnockback(){
		
		scrEnemyBase()
		scrPlayerCollision()
		y += vsp
		x += hsp
		
		var dir = point_direction(knockbackx,knockbacky,x,y)
		

			hsp = sign(lengthdir_x(0.5,dir))
			vsp = sign(lengthdir_y(0.5,dir))
			
			knockback -= 1
			
			if knockback <= 0  {
				state = oldState
			}

		
}