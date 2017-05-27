//[_paramEvent, _nameEvent] Call ...

_paramEvent = _this select 0;
_nameEvent = _this select 1;
_return = false;
if(SRVCore_DebugLevel > 2) then { diag_log format["SRV-Event: GET %1", _nameEvent]; };
{
    _forName = _x select 0;
    _forFunctions = _x select 1;
    if(_forName == _nameEvent) exitWith {
        if(SRVCore_DebugLevel > 1) then { diag_log format["SRV-Event: %1", _nameEvent]; };
        { [_paramEvent, _x] Call BIS_fnc_call; } forEach _forFunctions;
        _return = true;
    };
} forEach SRVCore_Event;
_return