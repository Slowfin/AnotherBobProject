switch (state)
{
	case statesEnemy.walk: scrEnemyWalk() break
	case statesEnemy.alert: scrEnemyAlert() break
	case statesEnemy.attack: scrEnemyAttack() break 
	case statesEnemy.attack2: scrEnemyAttack2() break
	case statesEnemy.knockback: scrEnemyKnockback() break 
	}