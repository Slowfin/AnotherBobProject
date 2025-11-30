randomize()


turn = objPlayer.turn
turn2 = objPlayer.turn2

sprite_index = choose(sprAttack2,sprAttack3,sprAttack4)

if objPlayer.key_up {
		turn2 = -1
		turn =  0    
		image_angle = 90
	} else if objPlayer.key_down and !objPlayer.grounded {
		turn2 = 1	
		turn =  0 
		image_angle = 270
	}
	
if  turn2 != 0 {
	image_xscale = 1
	image_yscale = turn2
} else {
	image_xscale = turn	
}
	
x = objPlayer.x + (turn * 19)
y = objPlayer.y + (turn2 * 19)  

// враги
if place_meeting(x,y,objEnemy) {
	var psHit = part_system_create(parHit)
	part_particles_burst(psHit,x+ (turn * 4),y,parHit)
	objCamera.alarm[0] = 3
	objCamera.isShaking = true
	objCamera.shakePower = 0.5
	with objEnemy if place_meeting(x,y,objAttack) {
	HP -= objPlayer.damage	
	gotHit = true
	alarm[0] = 5
	if other.turn2 != 1 and state != statesEnemy.knockback and canKnockback {
	oldState = state
	state = statesEnemy.knockback
	knockback = 10
	knockbackx = objPlayer.x
	knockbacky = objPlayer.y 
			}
	}
	if turn2 = 1 {
		objPlayer.vsp = -4.5
	}
	audio_play_sound(sndPunch,1,false,1,0,random_range(0.9,1.1))
}

// сундук
else if place_meeting(x,y,objChest) {
with objChest if place_meeting(x,y,objAttack) {
	if !broken {
	if HP > 1 {
	objCamera.alarm[0] = 5
	objCamera.isShaking = true
	objCamera.shakePower = 1
	var coinDrop =   irandom_range(3,4)
for (var i = 0; i < coinDrop; i += 1) {
	instance_create_layer(x,y-8,"Player",objCoin)	
}
	}  else {
			var coinDrop =   irandom_range(6,8)
for (var i = 0; i < coinDrop; i += 1) {
	instance_create_layer(x,y-8,"Player",objCoin)	
}
	objCamera.alarm[0] = 7
	objCamera.isShaking = true
	objCamera.shakePower = 3
	}
	HP -= 1	}
	
	if objAttack.turn2 = 1 {
		objPlayer.vsp = -4.5
	}
	audio_play_sound(sndPunch,1,false,1,0,random_range(0.9,1.1))
}	
 } else {
	audio_play_sound(sndWoosh2,1,false,1,0,random_range(0.9,1.1))	 
 }