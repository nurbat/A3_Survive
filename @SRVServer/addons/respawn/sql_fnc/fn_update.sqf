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

if (_player getVariable ["UID", ""] == "") exitWith { }; //UID EMPTY
if ((_player getVariable ["SESSION", ""]) != _session) exitWith { }; //SESSION BREAK

["UPDATE player SET",
    [
        ["damage",          damage _player],
        ["direction",       getDir _player],
        ["position",        getPosASL _player],
        ["hitpoints",       _player Call SRVTools_fnc_getPointsDamage],
        ["current_weapon",  currentWeapon _player],
        ["cargo",           _player Call SRVTools_fnc_getPlayerCargo],
        ["weapons",         _player Call SRVTools_fnc_getPlayerWeapons, ""],
        ["WHERE uid",       _player getVariable ["UID", ""]]
    ], 2
] Call SRVDB_fnc_queryBuild;
diag_log format["OK UPDATE %1", _player getVariable ["UID", ""]];
