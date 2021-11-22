/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 384B71E1
/// @DnDArgument : "code" "$(13_10)if (global.playerScore >= 50) {$(13_10)$(13_10)	global.playerScore -= 50;$(13_10)	global.playerUpgradeList[| index]++;$(13_10)	show_debug_message(string(global.playerScore));$(13_10)	show_debug_message(string(global.playerUpgradeList[| index]));$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)"

if (global.playerScore >= 50) {

	global.playerScore -= 50;
	global.playerUpgradeList[| index]++;
	show_debug_message(string(global.playerScore));
	show_debug_message(string(global.playerUpgradeList[| index]));

}