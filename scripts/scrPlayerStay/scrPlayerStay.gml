function scrPlayerStay(){

if sprite_index == sprPlayerFall and image_index >= 11 {
	sprite_index = sprPlayerLie	
}
	
	vsp += grv
	
	 scrPlayerCollision()
	 y += vsp
}
