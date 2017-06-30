params["_player"];
private _loadData = _player Call SRVRespawn_fnc_load;

private _playerSession = Call SRVTools_fnc_UID;
_player setVariable ["Session",     _playerSession,         true];
[_playerSession, "UID",         _loadData select 0] Call SRVCore_fnc_setVar;
[_playerSession, "NAME",        name _player      ] Call SRVCore_fnc_setVar;
[_playerSession, "OLD_NAME",    _loadData select 1] Call SRVCore_fnc_setVar;

_player setDamage (parseNumber (_loadData select 2));
_player setDir (parseNumber (_loadData select 3));
_player setPosASL (_loadData select 4);
[_player, (_loadData select 5)] Call SRVTools_fnc_setPointsDamage;

[_player, (_loadData select 7)] Call SRVTools_fnc_setPlayerWeapons;
if ((_loadData select 8) != "") then { _player selectWeapon (_loadData select 8); };
sleep 5;
[_player, (_loadData select 6)] Call SRVTools_fnc_setPlayerCargo;

[_player, _playerSession] Call SRVRespawn_fnc_update;
_player setVariable ["initSpawn", true, true];

