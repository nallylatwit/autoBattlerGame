/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73C9E270
/// @DnDArgument : "var" "counter"
counter = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2802BD45
/// @DnDArgument : "code" "// coinflip for who attacks first$(13_10)$(13_10)$(13_10)$(13_10)turn = choose(0,1);$(13_10)$(13_10)if (turn == 0) {$(13_10)$(13_10)	global.playerHasTurn = 1$(13_10)	show_debug_message("Player's turn!");$(13_10)} else {$(13_10)	$(13_10)	global.enemyHasTurn = 1;$(13_10)	show_debug_message("Enemy's turn!");$(13_10)}"
// coinflip for who attacks first



turn = choose(0,1);

if (turn == 0) {

	global.playerHasTurn = 1
	show_debug_message("Player's turn!");
} else {
	
	global.enemyHasTurn = 1;
	show_debug_message("Enemy's turn!");
}