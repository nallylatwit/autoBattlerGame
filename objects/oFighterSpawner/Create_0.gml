/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C1F4D85
/// @DnDArgument : "code" "$(13_10)global.list_enemy = ds_list_create();$(13_10)global.list_player = ds_list_create();$(13_10)global.listPos = 0;$(13_10)$(13_10)// the last spawner placed will be the place of the first fighter$(13_10)$(13_10)with (oSpawnEnemy) {$(13_10)$(13_10)fighter = instance_create_layer(x, y - 18, "Instances", oFighter);$(13_10)$(13_10)ds_list_add(global.list_enemy, fighter);$(13_10)$(13_10)fighter.image_xscale = -1;$(13_10)fighter.isEnemy = 1;$(13_10)fighter.pos = global.listPos;$(13_10)$(13_10)global.listPos ++;$(13_10)$(13_10)}$(13_10)$(13_10)global.listPos = 4;$(13_10)global.tempPos = 0;$(13_10)$(13_10)$(13_10)with (oSpawnPlayer) {$(13_10)	show_debug_message("spawning player character");$(13_10)	fighter = instance_create_layer(x, y - 18, "Instances", oFighter);$(13_10)	fighter.sprite_index = global.playerFighterList[| global.listPos];$(13_10)	$(13_10)	$(13_10)	{$(13_10)	$(13_10)	$(13_10)		if (fighter.sprite_index == fighterHLT) {$(13_10)$(13_10)			fighter.hp = 4;$(13_10)			fighter.atk = 1$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterMGK) {$(13_10)$(13_10)			fighter.hp = 2;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterSTR) {$(13_10)$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterBLK) {$(13_10)$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterORN) {$(13_10)	$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterPNK) {$(13_10)$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterPRP) {$(13_10)$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterRBW) {$(13_10)$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterWHT) {$(13_10)	$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		} else if (fighter.sprite_index == fighterYLW) {$(13_10)$(13_10)			fighter.hp = 3;$(13_10)			fighter.atk = 1;$(13_10)$(13_10)		}$(13_10)	$(13_10)	$(13_10)	}$(13_10)	$(13_10)	$(13_10)	fighter.pos = global.tempPos;$(13_10)	fighter.isEnemy = -1;$(13_10)	$(13_10)	$(13_10)	ds_list_add(global.list_player, fighter);$(13_10)	$(13_10)	$(13_10)	global.listPos--;$(13_10)	global.tempPos++;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)global.listPos = 0;$(13_10)$(13_10)if (global.playerVisitedShop == 1) {$(13_10)$(13_10)	//apply upgrade list $(13_10)	show_debug_message("visited store!");$(13_10)	for (i = 0; i < instance_number(oFighter); i++) {$(13_10)		$(13_10)		f = instance_find(oFighter,i);$(13_10)	$(13_10)		if (f.isEnemy < 0) {$(13_10)		$(13_10)			f.hp += global.playerUpgradeList[| f.pos];$(13_10)			f.atk += global.playerUpgradeList[| f.pos];$(13_10)		}$(13_10)	$(13_10)	}$(13_10)	$(13_10)	$(13_10)	$(13_10)	//with (oFighter) {$(13_10)	$(13_10)	//	if (oFighter.isEnemy < 0) {$(13_10)		$(13_10)	//		oFighter.hp += global.playerUpgradeList[| fighter.pos];$(13_10)	//		oFighter.atk += global.playerUpgradeList[| fighter.pos];$(13_10)		$(13_10)	//	}$(13_10)	$(13_10)	//}$(13_10)	$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)//with (oSpawnPlayer) {$(13_10)$(13_10)//fighter = instance_create_layer(x, y - 18, "Instances", oFighter);$(13_10)$(13_10)//ds_list_add(global.list_player, fighter);$(13_10)$(13_10)//fighter.pos = global.listPos;$(13_10)//fighter.isEnemy = -1;$(13_10)$(13_10)//global.listPos ++;$(13_10)$(13_10)//}"

global.list_enemy = ds_list_create();
global.list_player = ds_list_create();
global.listPos = 0;

// the last spawner placed will be the place of the first fighter

with (oSpawnEnemy) {

fighter = instance_create_layer(x, y - 18, "Instances", oFighter);

ds_list_add(global.list_enemy, fighter);

fighter.image_xscale = -1;
fighter.isEnemy = 1;
fighter.pos = global.listPos;

global.listPos ++;

}

global.listPos = 4;
global.tempPos = 0;


with (oSpawnPlayer) {
	show_debug_message("spawning player character");
	fighter = instance_create_layer(x, y - 18, "Instances", oFighter);
	fighter.sprite_index = global.playerFighterList[| global.listPos];
	
	
	{
	
	
		if (fighter.sprite_index == fighterHLT) {

			fighter.hp = 4;
			fighter.atk = 1

		} else if (fighter.sprite_index == fighterMGK) {

			fighter.hp = 2;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterSTR) {

			fighter.hp = 3;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterBLK) {

			fighter.hp = 3;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterORN) {
	
			fighter.hp = 3;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterPNK) {

			fighter.hp = 3;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterPRP) {

			fighter.hp = 3;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterRBW) {

			fighter.hp = 3;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterWHT) {
	
			fighter.hp = 3;
			fighter.atk = 1;

		} else if (fighter.sprite_index == fighterYLW) {

			fighter.hp = 3;
			fighter.atk = 1;

		}
	
	
	}
	
	
	fighter.pos = global.tempPos;
	fighter.isEnemy = -1;
	
	
	ds_list_add(global.list_player, fighter);
	
	
	global.listPos--;
	global.tempPos++;

}


global.listPos = 0;

if (global.playerVisitedShop == 1) {

	//apply upgrade list 
	show_debug_message("visited store!");
	for (i = 0; i < instance_number(oFighter); i++) {
		
		f = instance_find(oFighter,i);
	
		if (f.isEnemy < 0) {
		
			f.hp += global.playerUpgradeList[| f.pos];
			f.atk += global.playerUpgradeList[| f.pos];
		}
	
	}
	
	
	
	//with (oFighter) {
	
	//	if (oFighter.isEnemy < 0) {
		
	//		oFighter.hp += global.playerUpgradeList[| fighter.pos];
	//		oFighter.atk += global.playerUpgradeList[| fighter.pos];
		
	//	}
	
	//}
	
	
	
}




//with (oSpawnPlayer) {

//fighter = instance_create_layer(x, y - 18, "Instances", oFighter);

//ds_list_add(global.list_player, fighter);

//fighter.pos = global.listPos;
//fighter.isEnemy = -1;

//global.listPos ++;

//}