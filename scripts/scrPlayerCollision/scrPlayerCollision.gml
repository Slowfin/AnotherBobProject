function scrPlayerCollision(){
	
	// коллизия горизонтальная
if place_meeting(x+hsp,y,objWall) {
	while !place_meeting(x+sign(hsp),y,objWall) {
		x += sign(hsp)
	} 
hsp = 0
}

// коллизия вертикальная
if place_meeting(x,y+vsp,objWall) {
	while !place_meeting(x,y+sign(vsp),objWall) {
		y += sign(vsp)
	}
vsp = 0
}

}