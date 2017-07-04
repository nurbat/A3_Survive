params["_player"];
private _lastUpdate = _player getVariable["updateTime", 0];
private _playerSession = _player getVariable["Session", ""];
private _keyJob = _player getVariable["updateJob", ""];

if !(_keyJob isEqualTo "") exitWith { };
//TimeOut expired
if(_lastUpdate > time) exitWith 
{ 
    private _keyUpdate = [(_lastUpdate - time), [[_player, _playerSession],
    {
        _lastUpdate = (_this select 0) getVariable["updateTime", 0];
        if(_lastUpdate > time) exitWith { };
        [(_this select 0), (_this select 1)] Call SRVRespawn_fnc_update; //SAVE
    }]] Call SRVCore_fnc_createJob;
    _player setVariable["updateJob", _keyUpdate, true];
};

[_player, _playerSession] Call SRVRespawn_fnc_update; //SAVE
_player setVariable["updateTime", time + (SRVRespawn_cfg_updateTimeout * 60), true];