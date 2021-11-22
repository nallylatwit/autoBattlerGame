/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 557AAA91
/// @DnDArgument : "code" "global.playerVisitedShop = 1;$(13_10)global.shopIndex = 4;$(13_10)$(13_10)for (i = 0; i < instance_number(oShopMenu); i++) {$(13_10)$(13_10)	instance_find(oShopMenu, i).sprite_index = global.playerFighterList[| i];$(13_10)$(13_10)}"
global.playerVisitedShop = 1;
global.shopIndex = 4;

for (i = 0; i < instance_number(oShopMenu); i++) {

	instance_find(oShopMenu, i).sprite_index = global.playerFighterList[| i];

}