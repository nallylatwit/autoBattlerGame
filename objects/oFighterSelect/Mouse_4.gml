/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70749256
/// @DnDArgument : "code" "$(13_10)$(13_10)global.playerFighterList[| global.playerTeamPos] = id.sprite_index;$(13_10)global.playerTeamPos++;$(13_10)$(13_10)for (i = 0; i < instance_number(oPlayerTeam); i++) {$(13_10)$(13_10)	instance_find(oPlayerTeam, i).sprite_index = global.playerFighterList[| i];$(13_10)$(13_10)$(13_10)}"


global.playerFighterList[| global.playerTeamPos] = id.sprite_index;
global.playerTeamPos++;

for (i = 0; i < instance_number(oPlayerTeam); i++) {

	instance_find(oPlayerTeam, i).sprite_index = global.playerFighterList[| i];


}