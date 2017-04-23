params ["_unit_new", "_unit_old"];
if(SRVCall_DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => EntityRespawned] %1", name _unit_new]; };

//Run CallBack functions
{
   if(SRVCall_DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => EntityRespawned] %1", _x]; };
   [_this, _x] call BIS_fnc_call;
} forEach SRVCall_EntityRespawned;