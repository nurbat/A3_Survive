params ["_param", "_code", "_client"];
if(isNil "_client") then { [_param, _code] call BIS_fnc_call; }
else { [_param, _code] remoteExec ["BIS_fnc_call", _client]; };