// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scrEnemyWalk(){
	
			vsp += grv
		scrPlayerCollision()
		y += vsp
		x += hsp * sp
		
		scrEnemyBase()
		
		sp = basicSp
		sprite_index = sprEnemy
		
		if hsp > 0 {
			image_xscale = 1	
		} if hsp < 0 {
			image_xscale = -1	
		}
		
		
		if place_meeting(x+hsp*2,y,objWall) or !place_meeting(x+hsp*2,y+1,objWall) {
			hsp *= -1	
		}
		
		if distance_to_object(objPlayer) < 100 and  !collision_line(x+5,y+5,objPlayer.x,objPlayer.y,objWall,true,true) and  !collision_line(x-5,y-5,objPlayer.x,objPlayer.y,objWall,true,true) and !global.dialogue{
		state = statesEnemy.alert
		vsp = -3
		}
}