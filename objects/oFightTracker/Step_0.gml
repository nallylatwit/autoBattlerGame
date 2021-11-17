/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7EC1EC38
/// @DnDArgument : "code" "$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)global.enemyLeader = global.list_enemy[| 0];$(13_10)global.playerLeader = global.list_player[| 0];$(13_10)$(13_10)if (global.enemyLeader.canAttack == 1 && global.playerLeader.canAttack == 1) {$(13_10)// both leaders are in the arena$(13_10)$(13_10)if (global.enemyLeader.hp <= 0) {$(13_10)		// case for enemy leader dies$(13_10)			ds_list_delete(global.list_enemy, 0);$(13_10)			if (ds_list_size(global.list_enemy) <= 0) {$(13_10)	$(13_10)				show_debug_message("Player wins!");$(13_10)				room_goto_next();$(13_10)				exit;$(13_10)$(13_10)			}$(13_10)			for (i = 0; i < ds_list_size(global.list_enemy); i++) {$(13_10)			$(13_10)				global.list_enemy[| i].pos--;$(13_10)			$(13_10)			}$(13_10)			$(13_10)			instance_destroy(global.enemyLeader);$(13_10)			global.enemyLeader = global.list_enemy[| 0];$(13_10)			global.enemyLeader.canAttack = 0;$(13_10)			$(13_10)		} else if (global.playerLeader.hp <= 0) {$(13_10)		// case for player leader dies$(13_10)			ds_list_delete(global.list_player, 0);$(13_10)			if (ds_list_size(global.list_player) <= 0) {$(13_10)$(13_10)				show_debug_message("Enemy wins :(");$(13_10)				room_goto_next();$(13_10)				exit;$(13_10)	$(13_10)			}$(13_10)			for (i = 0; i < ds_list_size(global.list_player); i++) {$(13_10)			$(13_10)				global.list_player[| i].pos--;$(13_10)			$(13_10)			}$(13_10)			$(13_10)			instance_destroy(global.playerLeader);$(13_10)			global.playerLeader = global.list_player[| 0];$(13_10)			global.playerLeader.canAttack = 0;$(13_10)			$(13_10)		}$(13_10)$(13_10)$(13_10)	if (counter == 30) {$(13_10)		// this code ticks once a second$(13_10)		playerATK = global.playerLeader.atk;$(13_10)		enemyATK = global.enemyLeader.atk;$(13_10)		if (global.playerHasTurn == 1) {$(13_10)			// player's turn is processed$(13_10)			show_debug_message("player's turn proc");$(13_10)			global.enemyLeader.hp -= playerATK;$(13_10)			show_debug_message("player attacked enemy for " + string(global.playerLeader.atk) + "DMG ! Enemy health is now:  " + string(global.enemyLeader.hp) );$(13_10)			$(13_10)			global.playerHasTurn = 0;$(13_10)			global.enemyHasTurn = 1;$(13_10)		} else if (global.enemyHasTurn == 1) {$(13_10)			// Enemy's turn is processed$(13_10)		$(13_10)			show_debug_message("enemy turn proc");$(13_10)			global.playerLeader.hp -= enemyATK;$(13_10)			show_debug_message("enemy attacked player for " + string(global.enemyLeader.atk) + "DMG ! Player health is now: " + string(global.playerLeader.hp) );$(13_10)		$(13_10)		$(13_10)			global.enemyHasTurn = 0;$(13_10)			global.playerHasTurn = 1;$(13_10)		}$(13_10)		$(13_10)		$(13_10)		$(13_10)		$(13_10)		$(13_10)		counter = 0;$(13_10)	}$(13_10)	counter++;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)	//if (global.enemyLeader.hp > global.playerLeader.hp) {$(13_10)	$(13_10)	//	ds_list_delete(global.list_player, 0);$(13_10)	$(13_10)	//	for (i = 0; i < ds_list_size(global.list_player); i++) {$(13_10)	$(13_10)	//		global.list_player[| i].pos--;$(13_10)	$(13_10)	//	}$(13_10)		$(13_10)	//	instance_destroy(global.playerLeader);$(13_10)	//	global.playerLeader = global.list_player[| 0];$(13_10)	//	global.playerLeader.canAttack = 0;$(13_10)	$(13_10)	//} else if (global.enemyLeader.hp < global.playerLeader.hp){$(13_10)		$(13_10)	//	ds_list_delete(global.list_enemy, 0);$(13_10)		$(13_10)	//	for (i = 0; i < ds_list_size(global.list_enemy); i++) {$(13_10)		$(13_10)	//		global.list_enemy[| i].pos--;$(13_10)		$(13_10)	//	}$(13_10)		$(13_10)	//	instance_destroy(global.enemyLeader);$(13_10)	//	global.enemyLeader = global.list_enemy[| 0];$(13_10)	//	global.enemyLeader.canAttack = 0;$(13_10)		$(13_10)		$(13_10)	//}$(13_10)$(13_10)}"








global.enemyLeader = global.list_enemy[| 0];
global.playerLeader = global.list_player[| 0];

if (global.enemyLeader.canAttack == 1 && global.playerLeader.canAttack == 1) {
// both leaders are in the arena

if (global.enemyLeader.hp <= 0) {
		// case for enemy leader dies
			ds_list_delete(global.list_enemy, 0);
			if (ds_list_size(global.list_enemy) <= 0) {
	
				show_debug_message("Player wins!");
				room_goto_next();
				exit;

			}
			for (i = 0; i < ds_list_size(global.list_enemy); i++) {
			
				global.list_enemy[| i].pos--;
			
			}
			
			instance_destroy(global.enemyLeader);
			global.enemyLeader = global.list_enemy[| 0];
			global.enemyLeader.canAttack = 0;
			
		} else if (global.playerLeader.hp <= 0) {
		// case for player leader dies
			ds_list_delete(global.list_player, 0);
			if (ds_list_size(global.list_player) <= 0) {

				show_debug_message("Enemy wins :(");
				room_goto_next();
				exit;
	
			}
			for (i = 0; i < ds_list_size(global.list_player); i++) {
			
				global.list_player[| i].pos--;
			
			}
			
			instance_destroy(global.playerLeader);
			global.playerLeader = global.list_player[| 0];
			global.playerLeader.canAttack = 0;
			
		}


	if (counter == 30) {
		// this code ticks once a second
		playerATK = global.playerLeader.atk;
		enemyATK = global.enemyLeader.atk;
		if (global.playerHasTurn == 1) {
			// player's turn is processed
			show_debug_message("player's turn proc");
			global.enemyLeader.hp -= playerATK;
			show_debug_message("player attacked enemy for " + string(global.playerLeader.atk) + "DMG ! Enemy health is now:  " + string(global.enemyLeader.hp) );
			
			global.playerHasTurn = 0;
			global.enemyHasTurn = 1;
		} else if (global.enemyHasTurn == 1) {
			// Enemy's turn is processed
		
			show_debug_message("enemy turn proc");
			global.playerLeader.hp -= enemyATK;
			show_debug_message("enemy attacked player for " + string(global.enemyLeader.atk) + "DMG ! Player health is now: " + string(global.playerLeader.hp) );
		
		
			global.enemyHasTurn = 0;
			global.playerHasTurn = 1;
		}
		
		
		
		
		
		counter = 0;
	}
	counter++;





	//if (global.enemyLeader.hp > global.playerLeader.hp) {
	
	//	ds_list_delete(global.list_player, 0);
	
	//	for (i = 0; i < ds_list_size(global.list_player); i++) {
	
	//		global.list_player[| i].pos--;
	
	//	}
		
	//	instance_destroy(global.playerLeader);
	//	global.playerLeader = global.list_player[| 0];
	//	global.playerLeader.canAttack = 0;
	
	//} else if (global.enemyLeader.hp < global.playerLeader.hp){
		
	//	ds_list_delete(global.list_enemy, 0);
		
	//	for (i = 0; i < ds_list_size(global.list_enemy); i++) {
		
	//		global.list_enemy[| i].pos--;
		
	//	}
		
	//	instance_destroy(global.enemyLeader);
	//	global.enemyLeader = global.list_enemy[| 0];
	//	global.enemyLeader.canAttack = 0;
		
		
	//}

}