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
    _playerBodyItems =      _this select 6;
    _playerUniform =        _this select 7;
    _playerVest =           _this select 8;
    _playerBackpack =       _this select 9;
    _playerWeapons =        _this select 10;
    _playerCurrentWeapon =  _this select 11;
        
    player setDamage _playerDamage;
    player setPosASL _playerPos;
    player setDir _playerDir;

    //[ [player, _playerHit],     { _this Call SRVTools_fnc_setPointsDamage; } ]  remoteExec ["SRVCore_fnc_execCommand", 2];
    //[ [player, _playerWeapons], { _this Call SRVTools_fnc_setPlayerWeapons; } ] remoteExec ["SRVCore_fnc_execCommand", 2];
    //[ [[_playerBodyItems, _playerUniform, _playerVest, _playerBackpack], _playerWeapons], { _this Call SRVTools_fnc_setPlayerCargo; } ] remoteExec ["SRVCore_fnc_execCommand", 2];


    //if (_playerCurrentWeapon != "") then { player selectWeapon _playerCurrentWeapon; };
    
	player setVariable ["loadedIn", true, true];//STATUS IS LOADED
}, owner _player] Call SRVCore_fnc_execCommand;

