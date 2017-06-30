/*
 * Arguments:
 * 0: Player <OBJECT>
 * 1: Session <STRING>
 *
 * Return Value:
 * None
 *
 */
params["_player", "_session"];

private _playerUID = [_player, "UID", ""] Call SRVCore_fnc_getVar;
if (_playerUID == "") exitWith { }; //UID EMPTY
if ((_player getVariable ["Session", ""]) != _session) exitWith { }; //SESSION BREAK

["UPDATE player SET",
    [
        ["damage",          damage _player],
        ["direction",       getDir _player],
        ["position",        getPosASL _player],
        ["hitpoints",       _player Call SRVTools_fnc_getPointsDamage],
        ["current_weapon",  currentWeapon _player],
        ["cargo",           _player Call SRVTools_fnc_getPlayerCargo],
        ["weapons",         _player Call SRVTools_fnc_getPlayerWeapons, ""],
        ["WHERE uid",       _playerUID]
    ], 2
] Call SRVDB_fnc_queryBuild;
diag_log format["OK UPDATE %1", _playerUID];
