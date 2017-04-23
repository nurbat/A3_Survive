	params ["_player"];
    {
		_cargoType = _x call SRVCore_fnc_itemType;
		switch (_cargoType) do
		{
			case "Weapon": 		{ _player addWeaponGlobal _x; };
			case "Backpack": 	{ _player addBackpackGlobal _x; };
			case "Uniform": 	{ _player forceAddUniform _x; };
			case "Vest": 		{ _player addVest _x; };
			case "Item":		{ _player linkItem _x; };
			default 			{ _player addItem _x; };
		};
	} forEach SRVRespawn_loadOut;