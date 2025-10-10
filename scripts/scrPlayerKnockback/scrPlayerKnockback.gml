function scrPlayerKnockback() {

if objPlayer.invincFrames > 0 {
	objPlayer.canGetHit = false
	}


scrPlayerCollision()
x += hsp
y += vsp
	
var dir = point_direction(knockbackx,knockbacky,x,y)
		
		
			hsp = sign(lengthdir_x(1,dir)) 
			vsp = sign(lengthdir_y(1,dir))
			sprite_index = sprPlayerDie
			

	
}
