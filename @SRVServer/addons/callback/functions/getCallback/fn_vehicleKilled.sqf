params ["_killed", "_killer"];
if(DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => VehicleKilled] %1", typeOf _killed]; };

if(DebugLevel > 1) then { diag_log format["[SRVS-Callback] Loot %1", _killed Call SRVCore_fnc_getItemCargo]; };

//Run CallBack functions
{
   if(DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => VehicleKilled] %1", _x]; };
   [_this, _x] Call BIS_fnc_call;
} forEach VehicleKilledCallback;