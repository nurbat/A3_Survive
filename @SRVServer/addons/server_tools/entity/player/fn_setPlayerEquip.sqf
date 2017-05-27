/*
 * Arguments:
 * 0: Player <OBJECT>
 * 1: Items <ARRAY>
 *
 * Return Value:
 * None
 *
*/

params ["_player", "_items"];
{
	_cargoType = _x call SRVTools_fnc_itemType;
	switch (_cargoType) do
	{
		case "Weapon": 		{ _player addWeaponGlobal _x; };
		case "Backpack": 	{ _player addBackpackGlobal _x; };
		case "Uniform": 	{ _player forceAddUniform _x; };
		case "Vest": 		{ _player addVest _x; };
		case "Item":		{ _player linkItem _x; };
		default 			{ _player addItem _x; };
	};
} forEach _items;