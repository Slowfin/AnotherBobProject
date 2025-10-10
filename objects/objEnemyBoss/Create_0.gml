randomize()

enum statesBoss
{
	spawn,
	idle,
	attack,
	attack2,
	preattack,
	enemySpawn,
	died
}

state =  statesBoss.spawn
alarm[1] = 120

hsp = choose(-1,1)
hspSet = 0 
vsp = 0
grv = global.grv
basicSp = 2
sp = 0

canKnockback =false
knockback = false
HP = 750
gotHit = false
attackCdSet = 60
attackCd = attackCdSet
attackType = irandom(1)
attackTime = 0
timeToAttack = 60
jump = false
bullets = 0