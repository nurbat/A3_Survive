params ["_unit", "_id", "_uid", "_name"];
if(SRVCall_DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => HandleDisconnect] %1", _name]; };

//Run CallBack functions
{
   if(SRVCall_DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => HandleDisconnect] %1", _x]; };
   [_this, _x] call BIS_fnc_call;
} forEach SRVCall_HandleDisconnect;