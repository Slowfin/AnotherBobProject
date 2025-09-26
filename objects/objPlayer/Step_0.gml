switch (state)
{
	case states.normal: scrPlayerNormal() break
	case states.died: scrPlayerDied() break
	case states.stay: scrPlayerStay() break}

mask_index = sprPlayer


if keyboard_check_pressed(ord("R")) {
	game_restart()
}	

	
	
