/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 */
 params["_unit"];
 if (_unit getVariable ["UID", ""] != "") then
 {
    [_unit, _unit getVariable ["SESSION", ""]] Call SRVRespawn_fnc_delete;
    _unit setVariable ["UID", "", true];
    _unit setVariable ["isLoaded", false, true];
    _unit setVariable ["isDead", true, true];
 };