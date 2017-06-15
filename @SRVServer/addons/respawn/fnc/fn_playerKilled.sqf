/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 */
 params["_unit", "_killer"];
 private _playerSession = _unit getVariable["Session", ""];
 private _playerUID = [_playerSession, "UID"] Call SRVCore_fnc_getVar;
 private _playerNAME = [_playerSession, "NAME"] Call SRVCore_fnc_getVar;

 if (_playerUID != "") then
 {
    [_unit, _playerSession] Call SRVRespawn_fnc_delete;
    if(SRVRespawn_cfg_DebugLevel > 0 and (getPlayerUID _unit != _playerUID)) then { diag_log format["[SRV-Respawn] %1 (Offline) killed %2", _playerNAME, name _killer]; };
    if(SRVRespawn_cfg_DebugLevel > 0 and (getPlayerUID _unit == _playerUID)) then { diag_log format["[SRV-Respawn] %1 killed %2", _playerNAME, name _killer]; };
 };