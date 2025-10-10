if isShaking == false {
shakePower = 0
} 

camera_set_view_pos(view_camera[0],x+choose(shakePower,-shakePower),y+choose(shakePower,-shakePower))
camera_set_view_size(view_camera[0],320/camZoom,180/camZoom)

if !followPlayer {
var factor = 0.05
x += (camX - x) * factor
y += (camY - y) * factor
} else {
	if objPlayer.vsp >= 7 and yOffset < 150 {
	yOffset	+= 5
	} else if objPlayer.vsp < 7 and yOffset > 0 {
	yOffset	-= 5
	}
	if spawn {
	var factor = 1
	} else {
	var factor = 0.05	
	}
x += ((objPlayer.x - x) - (320/camZoom) / 2) * factor
y += ((objPlayer.y - y + yOffset) - (180/camZoom) / 1.6) * factor
	if x < 0 {
	x = 0	
	} else if x + 320/camZoom > room_width {
	x = room_width - 320/camZoom
	}
	if y < 0 {
	y = 0	
	} else if y + 180/camZoom > room_height {
	y = room_height - 180/camZoom
	}
}

spawn = false
