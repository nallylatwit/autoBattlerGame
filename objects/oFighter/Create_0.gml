/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D915704
/// @DnDInput : 5
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_3" "-1"
/// @DnDArgument : "expr_4" "-1"
/// @DnDArgument : "var" "canAttack"
/// @DnDArgument : "var_1" "pos"
/// @DnDArgument : "var_2" "isEnemy"
/// @DnDArgument : "var_3" "hp"
/// @DnDArgument : "var_4" "atk"
canAttack = 0;
pos = -1;
isEnemy = 0;
hp = -1;
atk = -1;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 409F0EC8
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "fighterHLT"
/// @DnDArgument : "option_1" "fighterMGK"
/// @DnDArgument : "option_2" "fighterSTR"
sprite_index = choose(fighterHLT, fighterMGK, fighterSTR);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D44CF79
/// @DnDArgument : "code" "if (sprite_index == fighterHLT) {$(13_10)$(13_10)hp = 4;$(13_10)atk = 1$(13_10)$(13_10)} else if (sprite_index == fighterMGK) {$(13_10)$(13_10)hp = 2;$(13_10)atk = 2;$(13_10)$(13_10)} else if (sprite_index == fighterSTR) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 3;$(13_10)$(13_10)}"
if (sprite_index == fighterHLT) {

hp = 4;
atk = 1

} else if (sprite_index == fighterMGK) {

hp = 2;
atk = 2;

} else if (sprite_index == fighterSTR) {

hp = 3;
atk = 3;

}