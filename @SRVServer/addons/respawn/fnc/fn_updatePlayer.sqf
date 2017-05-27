/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Result <BOOL>
 *
 */
params["_player"];
if (_player getVariable ["UID", ""] != "") exitWith {
    [_player, _player getVariable ["SESSION", ""]] Call SRVRespawn_fnc_update;
    _player setVariable ["UID", "", true];
    _player Call SRVRespawn_fnc_clearInventory;
    true;
};
_player Call SRVRespawn_fnc_clearInventory;
false;