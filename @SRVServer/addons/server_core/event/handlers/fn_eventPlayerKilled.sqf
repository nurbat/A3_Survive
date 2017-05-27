_Killed = _this select 0;
_killer = _this select 1;

if(isPlayer _Killed) exitWith {
    [_this, "PlayerKilled"] Call SRVCore_fnc_runEvent;
};