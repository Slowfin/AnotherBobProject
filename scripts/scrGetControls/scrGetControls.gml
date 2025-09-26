function scrGetControls() {

key_right = keyboard_check(vk_right)
key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_lay = keyboard_check(vk_down)
key_jump = keyboard_check_pressed(ord("Z"))
key_jump_long = keyboard_check(ord("Z"))
key_jump_released = keyboard_check_released(ord("Z"))
key_attack = keyboard_check_pressed(ord("X")) 
key_dash = keyboard_check_pressed(ord("C"))
key_interact = keyboard_check_pressed(vk_space)

move = (key_right - key_left) * sp 


var gp = global.gamepad_main
if gp != undefined {
	move = gamepad_axis_value(gp,gp_axislh) * sp
	if sprite_index == spriteWalk or sprite_index == spriteLayCrawl {
		image_speed = move	* 0.6
	} else {
		image_speed = 1     
	}
	key_jump = gamepad_button_check_pressed(gp,gp_face1)
	key_jump_long =  gamepad_button_check(gp,gp_face1)
	key_jump_released =  gamepad_button_check_released(gp,gp_face1)
	key_attack = gamepad_button_check_pressed(gp,gp_face3)
	key_dash = gamepad_button_check_pressed(gp,gp_shoulderrb)
	key_lay = gamepad_button_check(gp,gp_shoulderlb)
	key_up = -gamepad_axis_value(gp,gp_axislv)
	key_down = gamepad_axis_value(gp,gp_axislv)
	key_interact = gamepad_button_check_released(gp,gp_face4)
}

}