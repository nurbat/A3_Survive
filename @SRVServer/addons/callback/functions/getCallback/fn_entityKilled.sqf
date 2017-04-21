params ["_killed", "_killer"];
if(DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => EntityKilled] %1", _killed]; };

//Run CallBack functions
{
   if(DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => EntityKilled] %1", _x]; };
   [_this, _x] Call BIS_fnc_call;
} forEach EntityKilledCallback;

if(isPlayer _killed) exitWith { _this Call SRVCall_fnc_playerKilled; };
if(_killed in vehicles) exitWith { _this Call SRVCall_fnc_vehicleKilled; };
_this Call SRVCall_fnc_vehicleKilled;
