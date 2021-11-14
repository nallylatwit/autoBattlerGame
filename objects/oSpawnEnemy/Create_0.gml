/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1B0D3692
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y - 18"
/// @DnDArgument : "var" "enemyFighter"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "oFighter"
/// @DnDSaveInfo : "objectid" "oFighter"
var enemyFighter = instance_create_layer(x, y - 18, "Instances", oFighter);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3DBD5088
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "var" "enemyFighter.image_xscale"
enemyFighter.image_xscale = -1;