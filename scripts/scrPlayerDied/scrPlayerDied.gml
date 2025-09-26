function scrPlayerDied(){

if money > 0 {
instance_create_layer(x,y,"Player",objCoin)	
	money -= 1
}
		
	if money == 1 {
		alarm[1] = 60	
	}
	sprite_index = spriteDie
	if objCamera.isShaking {
		image_angle += 15
	}	
	
}
