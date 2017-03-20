	params ["_player"];
    {
		_cargoType = _x call SRVServer_util_itemType;
		switch (_cargoType) do
		{
			case 1: 	{ _player addItem _x; };
			case 2: 	{ _player addWeaponGlobal _x; };
			case 3: 	{ _player addBackpackGlobal _x; };
			case 4:		{ _player linkItem _x; };
			default 	{ _player addItem _x; };
		};
	} forEach loadOut;