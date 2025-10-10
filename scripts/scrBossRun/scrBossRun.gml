
function scrBossRun(){
		
				vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
	scrEnemyBase()
		sp = basicSp * 2
		if jump {
			sprite_index = sprEnemyJump
		} else {  
			sprite_index = sprEnemyRun
		}
		if objPlayer.x > x {
			hsp = 1
			image_xscale = 1
		} else if objPlayer.x < x  {
			hsp = -1
			image_xscale = -1	
		} 
		
		if attackCd > -1 {
		attackCd -= 1
		}
			
			if place_meeting(x,y+1,objWall) {
				jump = false	
			}
			
			
		if distance_to_object(objPlayer) < 25  and attackCd  <= 0 and !collision_line(x,y,objPlayer.x,objPlayer.y,objWall,true,true){	
		attackTime = 45
		image_index = 0
		
		once = 1
		if attackType == 0 {
			state = statesEnemy.attack
		} else {
			state = statesEnemy.attack2
			if objPlayer.x > x {
			hspSet = 1
		} else if objPlayer.x < x  {
			hspSet = -1
		} 	
		}	
		}
		
		
		if place_meeting(x+sign(hsp),y,objWall) {
			jump = true
			vsp = -4
			x -= hsp
		}
}