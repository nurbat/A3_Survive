params["_player"];
private _loadData = _player Call SRVRespawn_fnc_load;

private _playerSession = Call SRVTools_fnc_UID;
_player setVariable ["Session",     _playerSession,         true];
[_playerSession, "UID",         _loadData select 0] Call SRVCore_fnc_setVar;
[_playerSession, "NAME",        name _player      ] Call SRVCore_fnc_setVar;
[_playerSession, "OLD_NAME",    _loadData select 1] Call SRVCore_fnc_setVar;

_player setDamage (_loadData select 2);
_player setDir (_loadData select 3);
_player setPosASL (_loadData select 4);
[_player, (_loadData select 5)] Call SRVTools_fnc_setPointsDamage;

[_player, (_loadData select 10)] Call SRVTools_fnc_setPlayerWeapons;
if ((_loadData select 11) != "") then { _player selectWeapon (_loadData select 11); };
sleep 5;
[_player, [(_loadData select 6), (_loadData select 7), (_loadData select 8), (_loadData select 9)]] Call SRVTools_fnc_setPlayerCargo;


_player setVariable ["initSpawn", true, true];
