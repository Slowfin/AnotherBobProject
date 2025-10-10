function scrPlayerNormal() {

scrGetControls()


if !isDashing and canMove = true {
hsp = lerp(hsp,move,accel)

// гравитация

vsp += grv
}

if canMove = true {
if lay {
	mask_index = spriteLay
	if move == 0 {
		image_index = 0
		sprite_index = spriteLay
	} else {
		sprite_index = spriteLayCrawl
	}
	}	
if isDashing  {
	sprite_index = spriteDash
}	else if !grounded {
			if jumps >= 2 {
		sprite_index = spriteJumpDouble
	}		else {
		sprite_index = spriteJump
	}
}	if isDashing != true and !lay {
 if grounded and move != 0 {
	sprite_index = spriteWalk
} if grounded and move = 0 {
	sprite_index = spriteIdle
} } }
	
// стоит ли на земле
if place_meeting(x,y+1,objWall) {
	grounded = true	
	groundedTime += 1
} else {
	grounded = false
	groundedTime = 0
}

if groundedTime == 1 {
	image_index = 0	
}

if hsp > 0 {
	image_xscale = 1	
} if hsp < 0 {
	image_xscale = -1	
}

// сброс времени прыжка
if grounded {	
coyotTime = 6
jumps = 0
}

if groundedTime == 1 {
	dashCd = 0	
}

// прыжок на земле или двойной

if !isDashing and canMove = true  and canJump   {
if ((jumps < 1) and (key_jump and (coyotTime > 0)) or (earlyTime > 0 and grounded)) 
or (jumps > 0 and jumps < maxJumps and key_jump) or (coyotTime<= 0 and key_jump  and jumps < 1  and maxJumps > 1) {
		if (coyotTime<= 0 and key_jump  and jumps < 1 and maxJumps > 1) {
			jumps += 1	
		}
	vsp = -jumpPower
	coyotTime = 0
	jumps += 1
	jumpTime = 0
	earlyTime = 0
	audio_play_sound(sndWoosh,1,false,1.5,0,random_range(0.9,1.1))
	if jumps < 1  {
	dashCd = 0
	dashTime = 0
	}
	image_index = 0
} }



//if !grounded and jump 

// удлинитель прыжка
if key_jump_long and jumpTime < maxJumpTime and !grounded and canMove = true {
	vsp = -jumpPower
	jumpTime += 1
}

// когда отпустил кнопку прыжка, нельзя сделать ещё один
if( key_jump_released or (grounded and !key_jump_long) ) and canMove = true {
	jumpTime = 100
}

// время койота
if !grounded {
coyotTime -= 1	
}

// слишком рано нажал на прыжок и он выполняется
if coyotTime <= 0 and key_jump and !grounded and canMove = true {
	earlyTime = 10
}
if earlyTime > 0 {
	earlyTime -= 1	
}

// от застревания в стене
if place_meeting(x+sign(hsp),y,objWall) and place_meeting(x,y+sign(vsp),objWall) {
	x -= hsp 
}

scrPlayerCollision()
x += hsp
y += vsp
	
// смерть
	if HP <= 0 {
	state = states.died
			if money >  0 {
			objCamera.alarm[0] = money
			objCamera.isShaking = true
			objCamera.shakePower = 2
			} else {
				alarm[1] = 120
			objCamera.alarm[0] = 60  
			objCamera.isShaking = true
			objCamera.shakePower = 2	
			}
}
	
	if vsp > 7 {
vsp = 7
}
	
	if image_xscale >= 0 {
		turn = 1
	} else {
		turn = -1	
	}
	
if key_attack and attackCd <= 0 and !isDashing and canMove = true {
	var attack = instance_create_layer(x,y,"Player",objAttack)
	 attackCd = attackCdSet
}

if attackCd > 0 {
	attackCd -= 1	
} 

if key_dash and canDash and !isDashing and dashCd <= 0 and canMove = true and !lay {
	audio_play_sound(sndWoosh3,1,false,1,0,random_range(0.9,1.1))
	if !grounded {
		dashCd = 1000	
	} else {
		dashCd = dashCdSet
	}
	isDashing = true	
	dashTime = dashTimeSet
	if (key_right - key_left) > 0 {
		dashTurn = 1	
	} else if (key_right - key_left) < 0 { 
		dashTurn = -1 
	} else {
		dashTurn = image_xscale
	}
}

if dashCd > 0 {
	dashCd -= 1	
}

if dashTime > 0 {
	isDashing = true
		dashTime -= 1
		vsp = 0
		hsp =  dashTurn * dashSp
} else {
	isDashing = false	
}

if place_meeting(x+sign(hsp),y,objWall) {
	dashTime = 0
}

if grounded and key_lay and !isDashing {
	lay = true 
	mask_index = spriteLay
	sp = basicSp / 2
} else if (!collision_line(x+4.5,y,x+4.5,y-8,objWall,false,false) and !collision_line(x-4.5,y,x-4.5,y-8,objWall,false,false)) or vsp != 0 {
	lay = false	
	mask_index = spriteIdle
	sp = basicSp
}	

	if (collision_line(x+4.5,y,x+4.5,y-8,objWall,false,false) or collision_line(x-4.5,y,x-4.5,y-8,objWall,false,false)) and lay {
		canJump = false
	} else {
		canJump = true
	}


	
	if invincFrames > 0 {
		canGetHit = false	
		invincFrames -= 1 
		image_alpha = 0.5
	} else {
		canGetHit = true 
		image_alpha = 1
	}
	
	if vsp > 0 {
	vsp += 0.1
	}
	
	if place_meeting(x,y,objInteractable) and key_interact and global.dialogue == false  {
		global.dialogue = true	
		objNPC.canSkip = 5
	}
	
	if global.dialogue  {
	hsp = 0 
	vsp = 0
	canMove = false
	sprite_index = spriteIdle
} else  {
	canMove = true	
}

	//if place_meeting(x,y,objEnemy) and canGetHit  {
	//		HP -= 1  	
	//		invincFrames = invincFramesSet
	//		objCamera.alarm[0] = 5
	//		objCamera.isShaking = true
	//		objCamera.shakePower = 2
	//	}
		
	
	
	
}
