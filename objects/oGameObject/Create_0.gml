/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07584BD6
/// @DnDArgument : "code" "global.playerHasTurn = 0;$(13_10)global.enemyHasTurn = 0;$(13_10)$(13_10)if (global.fightBackground == 0) {$(13_10)$(13_10)var lay_id = layer_get_id("Background");$(13_10)var back_id = layer_background_get_id(lay_id);$(13_10)layer_background_sprite(back_id, bg1);$(13_10)$(13_10)} else if (global.fightBackground == 1) {$(13_10)$(13_10)var lay_id = layer_get_id("Background");$(13_10)var back_id = layer_background_get_id(lay_id);$(13_10)layer_background_sprite(back_id, bg2);$(13_10)$(13_10)} else {$(13_10)$(13_10)var lay_id = layer_get_id("Background");$(13_10)var back_id = layer_background_get_id(lay_id);$(13_10)layer_background_sprite(back_id, bg3);$(13_10)$(13_10)}"
global.playerHasTurn = 0;
global.enemyHasTurn = 0;

if (global.fightBackground == 0) {

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, bg1);

} else if (global.fightBackground == 1) {

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, bg2);

} else {

var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_sprite(back_id, bg3);

}

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 1DFEB9A1
randomize();