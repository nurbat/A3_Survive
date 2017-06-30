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
if (_playerUID == "") exitWith { }; //EXIT PLAYER DONT IS LOAD
if (_player getVariable ["SESSION", ""] != _session) exitWith { }; //SESSION BREAK

["DELETE FROM player WHERE",
    [
        ["uid", _playerUID]
    ]
] call SRVDB_fnc_queryBuild;