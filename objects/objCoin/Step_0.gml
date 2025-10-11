randomize()

vsp += grv
if place_meeting(x+hsp,y,objWall) {
	while !place_meeting(x+sign(hsp),y,objWall) {
		x += sign(hsp)
	} 
hsp *= -1
}

// коллизия вертикальная
if place_meeting(x,y+vsp,objWall) and vsp > 0 {
	while !place_meeting(x,y+sign(vsp),objWall) {
		y += sign(vsp)
	}
vsp = startVsp / 2
startVsp = vsp
}

if place_meeting(x,y+vsp,objWall) and vsp < 0 {
	vsp = -vsp
}

x += hsp
y += vsp

hsp = lerp(hsp,0,0.035)

if place_meeting(x,y,objPlayer) and objPlayer.state != states.died {
	instance_destroy()
	objPlayer.money += 1
	audio_stop_sound(sndCoin)
	audio_play_sound(sndCoin,1,false,1,0,random_range(0.9,1.1))
}	

angle  += -hsp * 3