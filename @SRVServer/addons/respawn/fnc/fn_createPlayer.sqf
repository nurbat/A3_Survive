params["_player"];

//Create player on SQL
_player Call SRVRespawn_fnc_create;
[_player, SRVRespawn_cfg_Equip] Call SRVTools_fnc_setPlayerEquip;//Add items to player

private _position = (selectRandom SRVRespawn_cfg_spawnPoint) Call SRVTools_fnc_circle;
if(SRVRespawn_cfg_spawnHeight > 0) then { _position set [2, SRVRespawn_cfg_spawnHeight]; };
_player setPosASL _position; //Set Position player

//SET META
private _playerSession = Call SRVTools_fnc_UID;
_player setVariable ["Session",     _playerSession,         true];
[_playerSession, "UID",         getPlayerUID _player] Call SRVCore_fnc_setVar;
[_playerSession, "NAME",        name _player        ] Call SRVCore_fnc_setVar;
[_playerSession, "LAST_SAVE",   time                ] Call SRVCore_fnc_setVar;

[_player, _playerSession] Call SRVRespawn_fnc_update; //SAVE
_player setVariable ["initSpawn", false, true]; //Complete