/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
*/

params["_unit"];
if (_unit getVariable ["UID", ""] != "") exitWith 
{
    _unit disableAI "FSM";
    _unit disableAI "MOVE";
    _unit disableAI "AUTOTARGET";
    _unit disableAI "TARGET";
    _unit disableAI "CHECKVISIBLE";
    _unit setVariable ["isConnected", false, true];
    _unit setVariable ["isSpawn",     false, true];
    _job = [
        (SRVRespawn_liveUnit * 60), 
        [_unit, 
        {
            if !(_this getVariable ["isConnected", false]) then
            {
                diag_log "UPDATE PLAYER";
                [_this, _this getVariable["SESSION", ""]] Call SRVRespawn_fnc_update;
                deleteVehicle _this;
            };
        }]] Call SRVCore_fnc_createJob;
    _unit setVariable ["isJob", _job, true];
        
};
deleteVehicle _unit;
