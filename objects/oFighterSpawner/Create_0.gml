/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C1F4D85
/// @DnDArgument : "code" "$(13_10)global.list_enemy = ds_list_create();$(13_10)global.list_player = ds_list_create();$(13_10)global.listPos = 0;$(13_10)$(13_10)// the last spawner placed will be the place of the first fighter$(13_10)$(13_10)with (oSpawnEnemy) {$(13_10)$(13_10)fighter = instance_create_layer(x, y - 18, "Instances", oFighter);$(13_10)$(13_10)ds_list_add(global.list_enemy, fighter);$(13_10)$(13_10)fighter.image_xscale = -1;$(13_10)fighter.isEnemy = 1;$(13_10)fighter.pos = global.listPos;$(13_10)$(13_10)global.listPos ++;$(13_10)$(13_10)}$(13_10)$(13_10)global.listPos = 0;$(13_10)$(13_10)with (oSpawnPlayer) {$(13_10)$(13_10)fighter = instance_create_layer(x, y - 18, "Instances", oFighter);$(13_10)$(13_10)ds_list_add(global.list_player, fighter);$(13_10)$(13_10)fighter.pos = global.listPos;$(13_10)fighter.isEnemy = -1;$(13_10)$(13_10)global.listPos ++;$(13_10)$(13_10)}"

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

global.listPos = 0;

with (oSpawnPlayer) {

fighter = instance_create_layer(x, y - 18, "Instances", oFighter);

ds_list_add(global.list_player, fighter);

fighter.pos = global.listPos;
fighter.isEnemy = -1;

global.listPos ++;

}