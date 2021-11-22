/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 643CB3DE
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3FC74CC1
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y - 18"
/// @DnDArgument : "caption" ""SCORE: ""
/// @DnDArgument : "var" "global.playerScore"
draw_text(x, y - 18, string("SCORE: ") + string(global.playerScore));