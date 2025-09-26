speed = 3.5
direction = point_direction(x,y,mouse_x,mouse_y)
image_angle = direction
alarm[0] = 30

while place_meeting(x,y,objWall) {
x = x + lengthdir_x(1,objPlayer.x)
y = y + lengthdir_y(1,objPlayer.y)
}
