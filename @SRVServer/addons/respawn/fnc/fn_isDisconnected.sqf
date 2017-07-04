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
    (_unit getVariable["updateJob", ""]) Call SRVCore_fnc_deleteJob;
    _unit setVariable ["updateJob",  "", true];
    _job = [
        (SRVRespawn_cfg_liveUnit * 60), 
        [[_unit, _playerNAME], 
        {
            if(SRVRespawn_cfg_DebugLevel > 0) then { diag_log format["[SRV-Respawn] %1 Disconnected complete.", (_this select 1)]; };
            [(_this select 0), (_this select 0) getVariable["Session", ""]] Call SRVRespawn_fnc_update;
            deleteVehicle (_this select 0);
        }]] Call SRVCore_fnc_createJob;
    [_playerSession, "QUIT_JOB", _job] Call SRVCore_fnc_setVar;
};
deleteVehicle _unit;
