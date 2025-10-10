randomize()

enum statesEnemy
{
	walk,
	alert,
	attack,
	attack2,
	knockback,
	died
}

state =  statesEnemy.walk

hsp = choose(-1,1)
hspSet = 0 
vsp = 0
grv = global.grv
basicSp = 0.5
sp = 0.5

canKnockback = true
knockback = false
HP = 100
gotHit = false
attackCdSet = 40
attackCd = attackCdSet
attackType = irandom(1)
jump = false

bossed = false