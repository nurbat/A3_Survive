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

if (_player getVariable ["UID", ""] == "") exitWith { }; //EXIT PLAYER DONT IS LOAD
if (_player getVariable ["SESSION", ""] != _session) exitWith { }; //SESSION BREAK

["DELETE FROM player WHERE",
    [
        ["uid", _player getVariable ["UID", ""]]
    ]
] call SRVDB_fnc_queryBuild;