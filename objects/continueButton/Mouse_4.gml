/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7BE80A60
/// @DnDArgument : "code" "if (id.sprite_index == spriteContinueButton) {$(13_10)$(13_10)	room_goto_next();$(13_10)$(13_10)} else {$(13_10)$(13_10)	exit;$(13_10)$(13_10)}"
if (id.sprite_index == spriteContinueButton) {

	room_goto_next();

} else {

	exit;

}