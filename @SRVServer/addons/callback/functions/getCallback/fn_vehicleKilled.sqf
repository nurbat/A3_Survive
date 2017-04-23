params ["_killed", "_killer"];
if(SRVCall_DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => VehicleKilled] %1", typeOf _killed]; };

//Run CallBack functions
{
   if(SRVCall_DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => VehicleKilled] %1", _x]; };
   [_this, _x] Call BIS_fnc_call;
} forEach SRVCall_VehicleKilled;