params["_player"];
if !(isPlayer _player) exitWith { };
private _playerSession = _player getVariable["Session", ""];

if(_playerSession != "") exitWith {
    private _playerUID = [_playerSession, "UID", ""] Call SRVCore_fnc_getVar;
    private _playerNAME = [_playerSession, "NAME", ""] Call SRVCore_fnc_getVar;
    
    //JOB
    ([_playerSession, "QUIT_JOB", ""] Call SRVCore_fnc_getVar) Call SRVCore_fnc_deleteJob;
    [_playerSession, "QUIT_JOB", ""] Call SRVCore_fnc_setVar;

    //Player is current joining, skip loaded
    if(getPlayerUID _player == _playerUID) then 
    { 
        _player setVariable ["initSpawn", false, true];
        if(SRVRespawn_cfg_DebugLevel > 0) then { diag_log format["[SRV-Respawn] %1 Rejoin", name _player]; };
        [_player, "playerComplete"] Call SRVCore_fnc_runEvent;
    } 
    else 
    {
        [_player, _playerSession] Call SRVRespawn_fnc_update;
        _player setVariable["Session", ""];
        if(SRVRespawn_cfg_DebugLevel > 0) then { diag_log format["[SRV-Respawn] %1 Wrong Rejoin; New Join %2", _playerNAME, name _player]; };
        //Clear and (Create/Load)
        _player setPos SRVRespawn_cfg_posInit;
        _player Call SRVRespawn_fnc_clearInventory;
        if(Call SRVRespawn_fnc_existPlayer) then {
            _player Call SRVRespawn_fnc_loadPlayer; 
        }//Игрок существует, загружаем
        else { 
            _player Call SRVRespawn_fnc_createPlayer; 
        };//Игрок отсуствует, создаем
    };
};

//Clear Inventory
_player setPos SRVRespawn_cfg_posInit;
_player Call SRVRespawn_fnc_clearInventory;    
if(Call SRVRespawn_fnc_existPlayer) then {
    _player Call SRVRespawn_fnc_loadPlayer; 
}//Игрок существует, загружаем
else { 
    _player Call SRVRespawn_fnc_createPlayer; 
};//Игрок отсуствует, создаем





