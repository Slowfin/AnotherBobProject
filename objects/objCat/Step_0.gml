if pet {
	sprite_index = sprPetPet
	objPlayer.canMove = false
	objPlayer.hsp = 0
	objPlayer.sprite_index = objPlayer.spriteLove
} else {
	sprite_index = sprPet
	objPlayer.canMove = true
} 

if place_meeting(x,y,objPlayer) and objPlayer.key_interact and pet == false {
	pet = true	
	image_index = 0
	audio_play_sound(sndPurr,1,false)
}

if image_index > image_number - 1 {
	pet = false	
	
}