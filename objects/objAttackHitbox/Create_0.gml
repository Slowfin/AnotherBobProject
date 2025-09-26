scrHitPlayer()
follow = noone
xoff = 0
yoff = 0
lifetime = 0

if follow != noone {
	x = follow.x + (follow.image_xscale * xoff)
	y = follow.y + yoff
}