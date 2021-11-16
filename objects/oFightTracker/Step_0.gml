/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7EC1EC38
/// @DnDArgument : "code" "global.enemyLeader = global.list_enemy[| 0];$(13_10)global.playerLeader = global.list_player[| 0];$(13_10)$(13_10)$(13_10)$(13_10)if (global.enemyLeader.canAttack == 1 && global.playerLeader.canAttack == 1) {$(13_10)$(13_10)	if (global.enemyLeader.hp > global.playerLeader.hp) {$(13_10)	$(13_10)		ds_list_delete(global.list_player, 0);$(13_10)	$(13_10)		for (i = 0; i < ds_list_size(global.list_player); i++) {$(13_10)	$(13_10)			global.list_player[| i].pos--;$(13_10)	$(13_10)		}$(13_10)		$(13_10)		instance_destroy(global.playerLeader);$(13_10)		global.playerLeader = global.list_player[| 0];$(13_10)		global.playerLeader.canAttack = 0;$(13_10)	$(13_10)	} else if (global.enemyLeader.hp < global.playerLeader.hp){$(13_10)		$(13_10)		ds_list_delete(global.list_enemy, 0);$(13_10)		$(13_10)		for (i = 0; i < ds_list_size(global.list_enemy); i++) {$(13_10)		$(13_10)			global.list_enemy[| i].pos--;$(13_10)		$(13_10)		}$(13_10)		$(13_10)		instance_destroy(global.enemyLeader);$(13_10)		global.enemyLeader = global.list_enemy[| 0];$(13_10)		global.enemyLeader.canAttack = 0;$(13_10)		$(13_10)		$(13_10)	}$(13_10)$(13_10)}"
global.enemyLeader = global.list_enemy[| 0];
global.playerLeader = global.list_player[| 0];



if (global.enemyLeader.canAttack == 1 && global.playerLeader.canAttack == 1) {

	if (global.enemyLeader.hp > global.playerLeader.hp) {
	
		ds_list_delete(global.list_player, 0);
	
		for (i = 0; i < ds_list_size(global.list_player); i++) {
	
			global.list_player[| i].pos--;
	
		}
		
		instance_destroy(global.playerLeader);
		global.playerLeader = global.list_player[| 0];
		global.playerLeader.canAttack = 0;
	
	} else if (global.enemyLeader.hp < global.playerLeader.hp){
		
		ds_list_delete(global.list_enemy, 0);
		
		for (i = 0; i < ds_list_size(global.list_enemy); i++) {
		
			global.list_enemy[| i].pos--;
		
		}
		
		instance_destroy(global.enemyLeader);
		global.enemyLeader = global.list_enemy[| 0];
		global.enemyLeader.canAttack = 0;
		
		
	}

}