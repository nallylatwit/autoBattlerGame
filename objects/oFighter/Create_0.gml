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
/// @DnDInput : 10
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "fighterHLT"
/// @DnDArgument : "option_1" "fighterMGK"
/// @DnDArgument : "option_2" "fighterSTR"
/// @DnDArgument : "option_3" "fighterBLK"
/// @DnDArgument : "option_4" "fighterORN"
/// @DnDArgument : "option_5" "fighterPNK"
/// @DnDArgument : "option_6" "fighterPRP"
/// @DnDArgument : "option_7" "fighterRBW"
/// @DnDArgument : "option_8" "fighterWHT"
/// @DnDArgument : "option_9" "fighterYLW"
sprite_index = choose(fighterHLT, fighterMGK, fighterSTR, fighterBLK, fighterORN, fighterPNK, fighterPRP, fighterRBW, fighterWHT, fighterYLW);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D44CF79
/// @DnDArgument : "code" "if (sprite_index == fighterHLT) {$(13_10)$(13_10)hp = 4;$(13_10)atk = 1$(13_10)$(13_10)} else if (sprite_index == fighterMGK) {$(13_10)$(13_10)hp = 2;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterSTR) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterBLK) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterORN) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterPNK) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterPRP) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterRBW) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterWHT) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)} else if (sprite_index == fighterYLW) {$(13_10)$(13_10)hp = 3;$(13_10)atk = 1;$(13_10)$(13_10)}"
if (sprite_index == fighterHLT) {

hp = 4;
atk = 1

} else if (sprite_index == fighterMGK) {

hp = 2;
atk = 1;

} else if (sprite_index == fighterSTR) {

hp = 3;
atk = 1;

} else if (sprite_index == fighterBLK) {

hp = 3;
atk = 1;

} else if (sprite_index == fighterORN) {

hp = 3;
atk = 1;

} else if (sprite_index == fighterPNK) {

hp = 3;
atk = 1;

} else if (sprite_index == fighterPRP) {

hp = 3;
atk = 1;

} else if (sprite_index == fighterRBW) {

hp = 3;
atk = 1;

} else if (sprite_index == fighterWHT) {

hp = 3;
atk = 1;

} else if (sprite_index == fighterYLW) {

hp = 3;
atk = 1;

}