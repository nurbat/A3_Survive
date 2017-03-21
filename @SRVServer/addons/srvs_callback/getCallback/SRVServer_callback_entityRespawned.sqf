params ["_unit_new", "_unit_old"];
if(DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => EntityRespawned] %1", _name]; };

//Run CallBack functions
{
   if(DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => EntityRespawned] %1", _x]; };
   [_this, _x] call BIS_fnc_call;
} forEach EntityRespawnedCallback;