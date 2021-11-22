/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AC99277
/// @DnDArgument : "code" "if (id.sprite_index == spriteResetButton) {$(13_10)$(13_10)	global.playerTeamPos = 0;$(13_10)	$(13_10)	for (i = 0; i < instance_number(oPlayerTeam); i++) {$(13_10)		$(13_10)		global.playerFighterList[| i] = spritePlayerTeam;$(13_10)		instance_find(oPlayerTeam, i).sprite_index = global.playerFighterList[| i];$(13_10)$(13_10)$(13_10)	}$(13_10)	$(13_10)	resetButton.sprite_index = emptySprite;$(13_10)	continueButton.sprite_index = emptySprite;$(13_10)$(13_10)} else {$(13_10)$(13_10)	exit;$(13_10)$(13_10)}"
if (id.sprite_index == spriteResetButton) {

	global.playerTeamPos = 0;
	
	for (i = 0; i < instance_number(oPlayerTeam); i++) {
		
		global.playerFighterList[| i] = spritePlayerTeam;
		instance_find(oPlayerTeam, i).sprite_index = global.playerFighterList[| i];


	}
	
	resetButton.sprite_index = emptySprite;
	continueButton.sprite_index = emptySprite;

} else {

	exit;

}