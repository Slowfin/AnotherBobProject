scrHitPlayer()

if follow != noone {
	x = follow.x + (follow.image_xscale * xoff)
	y = follow.y + yoff
}

lifetime -= 1 

if lifetime <= 0 {
	instance_destroy()	
}