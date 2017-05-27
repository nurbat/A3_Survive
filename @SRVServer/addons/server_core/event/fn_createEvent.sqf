//[_nameEvent, { _function }] Call createEvent;

_nameEvent = _this select 0;
_functionCode = _this select 1;
_return = false;
{
    _currentEvent = _x;
    if(_currentEvent select 0 == _nameEvent) exitWith  
    {  
        _functionList = _currentEvent select 1;
        if(SRVCore_DebugLevel > 1) then { diag_log format["SRV-Event: SET %1", _nameEvent]; };
        _currentEvent set [1, _functionList + [_functionCode]];
        _x = _currentEvent;
        _return = true;
    };
} forEach SRVCore_Event;

if !(_return) then {
    if(SRVCore_DebugLevel > 1) then { diag_log format["SRV-Event: CREATE %1", _nameEvent]; };
    SRVCore_Event append [[_nameEvent, [_functionCode]]];
};