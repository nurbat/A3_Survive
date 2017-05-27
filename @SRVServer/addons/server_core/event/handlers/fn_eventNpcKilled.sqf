_Killed = _this select 0;
_killer = _this select 1;

if(!(_Killed in vehicles) and !(isPlayer _Killed)) exitWith {
    [_this, "NPCKilled"] Call SRVCore_fnc_runEvent;
};