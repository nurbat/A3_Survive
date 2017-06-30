/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
*/

params["_unit"];
private _playerSession = _unit getVariable["Session", ""];
private _playerUID = [_playerSession, "UID", ""] Call SRVCore_fnc_getVar;
private _playerNAME = [_playerSession, "NAME", ""] Call SRVCore_fnc_getVar;

if (_playerUID != "") exitWith 
{
    _unit disableAI "FSM";
    _unit disableAI "MOVE";
    _unit disableAI "AUTOTARGET";
    _unit disableAI "TARGET";
    _unit disableAI "CHECKVISIBLE";
    _unit setVariable ["isConnected", false, true];
    _unit setVariable ["isSpawn",     false, true];
    _job = [
        (SRVRespawn_cfg_liveUnit * 60), 
        [_unit, 
        {
            
            if(SRVRespawn_cfg_DebugLevel > 0) then { diag_log format["[SRV-Respawn] %1 Disconnected complete.", _playerNAME]; };
            [_this, _this getVariable["Session", ""]] Call SRVRespawn_fnc_update;
            deleteVehicle _this;
        }]] Call SRVCore_fnc_createJob;
    [_unit, "QUIT_JOB", _job] Call SRVCore_fnc_setVar;
};
deleteVehicle _unit;
