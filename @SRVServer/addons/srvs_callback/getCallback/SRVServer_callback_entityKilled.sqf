params ["_killed", "_killer"];
if(DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => EntityKilled] %1", name _killed]; };

//Run CallBack functions
{
   if(DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => EntityKilled] %1", _x]; };
   [_this, _x] call BIS_fnc_call;
} forEach EntityKilledCallback;