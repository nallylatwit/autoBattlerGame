/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 2F6DB063
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2B4404DF
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y - 18"
/// @DnDArgument : "caption" ""Cost:""
/// @DnDArgument : "var" ""50 for +1 Health / +1 Attack""
draw_text(x, y - 18, string("Cost:") + string("50 for +1 Health / +1 Attack"));