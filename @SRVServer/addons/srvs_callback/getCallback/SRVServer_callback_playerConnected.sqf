params ["_id", "_uid", "_name", "_jip", "_owner"];
if(DebugLevel > 1) then { diag_log format["[SRVS-Callback -> Get => PlayerConnected] %1", _name]; };

//Create Player_Object
private["_player"];
{
    if(name _x == _name) then {
        _player = _x;
    };
} forEach allPlayers;

//Run CallBack functions
{
   if(DebugLevel > 2) then { diag_log format["[SRVS-Callback -> Module => PlayerConnected] %1", _x]; };
   [_player, _x] call BIS_fnc_call;
} forEach PlayerConnectedCallback;