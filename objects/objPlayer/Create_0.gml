enum states
{
	normal,
	stay,
	knockback,
	died
}
state = states.normal

accel = 0.2
cheesed = false

nextX = 0
nextY = 0
nextRoom = 0
global.fadeAlpha = 0

//апгрейды
maxJumps = 2
canDash = true

global.grv = 0.25
grv = global.grv
basicSp = 1.5
runSp = 3
sp = basicSp
hsp = 0
jumpPower = 3.2
vsp = 0
oldVsp = vsp
grounded = false
groundedTime = 0
landed = false
jumpTime = 0
maxJumpTime = 10
coyotTime = 0
earlyTime = 0
jumps = 0
wallGrab = 0

//смерть
diedTime = 0
respX = x
respY = y
global.respawn = false
// атака
attackCdSet = 20
attackCd = 0
gotHit = false
canGetHit = true
damage = 20
// дэш
isDashing = false
dashSp = 4
dashTurn = 0
dashTimeSet = 10
dashTime = 0
dashCd = 0
dashCdSet = 30

spriteIdle = sprPlayer
spriteWalk = sprPlayerWalk
spriteDash = sprPlayerDash
spriteJump = sprPlayerJump
spriteJumpDouble = sprPlayerJumpDouble
spriteDie = sprPlayerDie
spriteLay = sprPlayerLay
spriteLayCrawl = sprPlayerLayCrawl
spriteLove = sprPlayerLove
spriteWallGrab = sprPlayerGrab
lay = false
turn = 0
turn2 = 0

once = 0

maxHP = 5
HP = maxHP
getHit = false
invincFrames = 0
invincFramesSet = 60
canGetHit = true
canMove = true
canJump = true

knockbackx = 0
knockbacky = 0

money = 0
savedState = 0

spawnX = x
spawnY = y    



key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_jump = keyboard_check_pressed(ord("Z"))
key_jump_long = keyboard_check(ord("Z"))
key_jump_released = keyboard_check_released(ord("Z"))
key_attack = keyboard_check_pressed(ord("X")) 
key_dash = keyboard_check_pressed(ord("C"))
key_interact = keyboard_check_pressed(vk_space)
