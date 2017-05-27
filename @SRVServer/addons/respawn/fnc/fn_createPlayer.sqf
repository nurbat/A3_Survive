params["_player"];
private["_position"];
//Create player on SQL
_player Call SRVRespawn_fnc_create;
[_player, SRVRespawn_Equip] Call SRVTools_fnc_setPlayerEquip;//Add items to player

_position = (selectRandom SRVRespawn_spawnPoint) Call SRVTools_fnc_circle;
if(SRVRespawn_spawnHeight > 0) then { _position set [2, SRVRespawn_spawnHeight]; };
_player setPosASL _position; //Set Position player

//SET META
_player setVariable ["UID",         getPlayerUID _player,   true];
_player setVariable ["NAME",        name _player,           true];
_player setVariable ["LAST_SAVE",   time,                   true];
_player setVariable ["SESSION",     CALL SRVTools_fnc_UID,  true];
_player setVariable ["isConnected", true,                   true];

//SAVE DATA PLAYER
[_player, _player getVariable["SESSION", ""]] Call SRVRespawn_fnc_update;
//COMPLETE LOAD
_player setVariable ["isLoaded", true, true];


