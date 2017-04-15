params ["_from", "_to", "_isRuin"];
if(DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => BuildingChanged]"]; };

//Run CallBack functions
{
   if(DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => BuildingChanged] %1", _x]; };
   [_this, _x] call BIS_fnc_call;
} forEach BuildingChangedCallback;