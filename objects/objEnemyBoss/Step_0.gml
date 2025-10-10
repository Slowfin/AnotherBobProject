switch (state)
{
	case statesBoss.spawn: scrBossSpawn() break
	case statesBoss.idle: scrBossIdle() break
	case statesBoss.attack: scrBossAttack() break 
	case statesBoss.attack2: scrBossAttack2() break
	case statesBoss.preattack: scrBossPreAttack() break
	case statesBoss.enemySpawn: scrBossEnemySpawn() break 
	case statesBoss.died: scrBossDied() break 
	}