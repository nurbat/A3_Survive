_Killed = _this select 0;
_killer = _this select 1;

if(_Killed in vehicles) exitWith {
    [_this, "VehicleKilled"] Call SRVCore_fnc_runEvent;
};