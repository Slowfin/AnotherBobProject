if objPlayer.cheesed {
	objPlayer.state = states.stay
	instance_destroy()
	objPlayer.sprite_index = sprPlayerFall
	objPlayer.alarm[0] = 180
}