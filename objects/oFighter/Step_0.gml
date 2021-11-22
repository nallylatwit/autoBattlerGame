/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 64592895
/// @DnDArgument : "expr" "isEnemy > 0 && pos == 0"
if(isEnemy > 0 && pos == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 7DC1AE68
	/// @DnDParent : 64592895
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1CDF284C
	/// @DnDParent : 64592895
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5ED5C89C
	/// @DnDParent : 64592895
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "object" "oEnemyArena"
	/// @DnDSaveInfo : "object" "oEnemyArena"
	var l5ED5C89C_0 = instance_place(x, y, oEnemyArena);
	if ((l5ED5C89C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 09055099
		/// @DnDParent : 5ED5C89C
		speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 366A1A04
		/// @DnDParent : 5ED5C89C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "canAttack"
		canAttack = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 226863E4
/// @DnDArgument : "expr" "isEnemy < 0 && pos == 0"
if(isEnemy < 0 && pos == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 2F36C81C
	/// @DnDParent : 226863E4
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3F87F5D4
	/// @DnDParent : 226863E4
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1B16844C
	/// @DnDParent : 226863E4
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "object" "oPlayerArena"
	/// @DnDSaveInfo : "object" "oPlayerArena"
	var l1B16844C_0 = instance_place(x, y, oPlayerArena);
	if ((l1B16844C_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1F541B44
		/// @DnDParent : 1B16844C
		speed = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D84A26A
		/// @DnDParent : 1B16844C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "canAttack"
		canAttack = 1;
	}
}