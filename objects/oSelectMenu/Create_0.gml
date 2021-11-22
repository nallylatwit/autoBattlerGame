/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B5CC6C8
/// @DnDArgument : "code" "global.playerVisitedShop = 0;$(13_10)global.playerScore = 0;$(13_10)$(13_10)$(13_10)$(13_10)global.fighterList = ds_list_create();$(13_10)ds_list_add(global.fighterList, fighterBLK, fighterHLT, fighterMGK, fighterORN, fighterPNK, fighterPRP, fighterRBW, fighterSTR, fighterWHT, fighterYLW);$(13_10)global.playerFighterList = ds_list_create();$(13_10)$(13_10)$(13_10)for (i = 0; i < instance_number(oFighterSelect); i++) {$(13_10)$(13_10)	instance_find(oFighterSelect, i).sprite_index = global.fighterList[| i];$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)for (i = 0; i < instance_number(oPlayerTeam); i++) {$(13_10)$(13_10)	ds_list_add(global.playerFighterList, spritePlayerTeam);$(13_10)$(13_10)}$(13_10)$(13_10)"
global.playerVisitedShop = 0;
global.playerScore = 0;



global.fighterList = ds_list_create();
ds_list_add(global.fighterList, fighterBLK, fighterHLT, fighterMGK, fighterORN, fighterPNK, fighterPRP, fighterRBW, fighterSTR, fighterWHT, fighterYLW);
global.playerFighterList = ds_list_create();


for (i = 0; i < instance_number(oFighterSelect); i++) {

	instance_find(oFighterSelect, i).sprite_index = global.fighterList[| i];


}

for (i = 0; i < instance_number(oPlayerTeam); i++) {

	ds_list_add(global.playerFighterList, spritePlayerTeam);

}