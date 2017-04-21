_data = _this select 0;
_player = _this select 1;

[_data, { 
    player disableAI "ALL";
    
    removeAllWeapons player;
    removeAllAssignedItems player;
    removeGoggles player;
    removeHeadgear player;
    removeUniform player;
    removeVest player;
    removeBackpack player;
    removeAllItems player;
    removeAllContainers player;

    _playerUID =            _this select 0;
    _playerNAME =           _this select 1;
    _playerDamage =         _this select 2;
    _playerDir =            _this select 3;
    _playerPos =            _this select 4;
    _playerHit =            _this select 5;
    _playerAssignedItems =  _this select 6;
    _playerBackpack =       _this select 7;
    _playerBackpackItems =  _this select 8;
    _playerBackpackMagazine = _this select 9;
    _playerBackpackWeapons = _this select 10;
    _playerCurrentWeapon =  _this select 11;
    _playerGoggles =        _this select 12;
    _playerHandgunItems =   _this select 13;
    _playerHandgunWeapon =  _this select 14;
    _playerHeadgear =       _this select 15;
    _playerBinocular =      _this select 16;
    _playerLoadedMagazine = _this select 17;
    _playerPrimaryWeapon =  _this select 18;
    _playerPrimaryItems =   _this select 19;
    _playerSecondaryWeapon = _this select 20;
    _playerSecondaryItems = _this select 21;
    _playerUniform =        _this select 22;
    _playerUniformItems =   _this select 23;
    _playerUniformMagazine = _this select 24;
    _playerUniformWeapons = _this select 25;
    _playerVest =           _this select 26;
    _playerVestItems =      _this select 27;
    _playerVestMagazines =  _this select 28;
    _playerVestWeapons =    _this select 29;
        
    player setDamage _playerDamage;
    player setPosASL _playerPos;
    player setDir _playerDir;

    [player, _playerHit] Call SRVCore_fnc_setAllHitPointsDamage;

    //assignedItems
    if !(_playerAssignedItems isEqualTo []) then
    {
        {
            player linkItem _x;
        }
        forEach _playerAssignedItems;
    };

    //goggles
    if (_playerGoggles != "") then
    {
        player addGoggles _playerGoggles;
    };

    //handgunWeapon
    if (_playerHandgunWeapon != "") then
    {
        player addWeaponGlobal _playerHandgunWeapon;
        removeAllHandgunItems player;
        { 
            if (_x != "") then
            {
                player addHandgunItem _x; 
            };
        } 
        forEach _playerHandgunItems;
    };

    //headgear
    if (_playerHeadgear != "") then
    {
        player addHeadgear _playerHeadgear;
    };

    //binocular
    if (_playerBinocular != "") then
    {
        player addWeaponGlobal _playerBinocular;
    };

    //currentWeapon
    if (_playerCurrentWeapon != "") then
    {
        player selectWeapon _playerCurrentWeapon;
    };

    //primaryWeapon
    if (_playerPrimaryWeapon != "") then 
    {
        player addWeaponGlobal _playerPrimaryWeapon;
        removeAllPrimaryWeaponItems player;
        { 
            if (_x != "") then
            {
                player addPrimaryWeaponItem _x; 
            };
        } 
        forEach _playerPrimaryItems;
    };


    //secondaryWeapon
    if (_playerSecondaryWeapon != "") then
    {
        player addWeaponGlobal _playerSecondaryWeapon;
        { 
            if (_x != "") then
            {
                player addSecondaryWeaponItem _x; 
            };
        } 
        forEach _playerSecondaryItems;
    };

    //loaded_magazines
    { 
        player addWeaponItem [_x select 0, [_x select 1, _x select 2, _x select 3]];
    } forEach _playerLoadedMagazine;


    //Uniform
    if (_playerUniform != "") then 
    {
        player forceAddUniform _playerUniform;

        _uniformContainer = uniformContainer player;
        if !(isNil "_uniformContainer") then
        {
            { 
                _uniformContainer addWeaponCargoGlobal _x; 
            } forEach _playerUniformWeapons;
            { 
                _uniformContainer addMagazineAmmoCargo [_x select 0, 1, _x select 1]; 
            } forEach _playerUniformMagazine;
            { 
                _uniformContainer addItemCargoGlobal _x; 
            } forEach _playerUniformItems;
        };
    };

    //Vest
    if (_playerVest != "") then
    {
        player addVest _playerVest;

        _vestContainer = vestContainer player;
        if !(isNil "_vestContainer") then
        {
            { 
                _vestContainer addWeaponCargoGlobal _x; 
            } forEach _playerVestWeapons;
            { 
                _vestContainer addMagazineAmmoCargo [_x select 0, 1, _x select 1]; 
            } forEach _playerVestMagazines;
            { 
                _vestContainer addItemCargoGlobal _x; 
            } forEach _playerVestItems;
        };
    };

    //backpack
    if (_playerBackpack != "") then
    {
        player addBackpackGlobal _playerBackpack;

        _backpackContainer = backpackContainer player;
        if !(isNil "_backpackContainer") then
        {
            { 
                _backpackContainer addWeaponCargoGlobal _x; 
            } forEach _playerBackpackWeapons;
            { 
                _backpackContainer addMagazineAmmoCargo [_x select 0, 1, _x select 1]; 
            } forEach _playerBackpackMagazine;
            { 
                _backpackContainer addItemCargoGlobal _x; 
            } forEach _playerBackpackItems;
        };
    };
    
	player setVariable ["loadedIn", true, true];//STATUS IS LOADED
}, owner _player] Call SRVCore_fnc_execServer;

