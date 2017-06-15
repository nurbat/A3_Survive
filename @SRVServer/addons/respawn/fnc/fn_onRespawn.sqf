params["_player"];
if !(isPlayer _player) exitWith { };
private _playerSession = _player getVariable["Session", ""];

if(_playerSession != "") then {
    private _playerUID = [_playerSession, "UID", ""] Call SRVCore_fnc_getVar;
    private _playerNAME = [_playerSession, "NAME", ""] Call SRVCore_fnc_getVar;
    //Player is current joining, skip loaded
    if(getPlayerUID _player == _playerUID) exitWith { 
        _player setVariable ["initSpawn", true];
            private _playerJob = _player getVariable["isJob", ""];
            if(_playerJob != "") then  { _playerJob Call SRVCore_fnc_deleteJob; }; //Удаляем работу, если существует 
            if(SRVRespawn_cfg_DebugLevel > 0) then { diag_log format["[SRV-Respawn] %1 Rejoin", name _player]; };
    };
    [_player, _playerSession] Call SRVRespawn_fnc_update;
    _player setVariable["isJob", ""];
    _player setVariable["Session", ""];
    if(SRVRespawn_cfg_DebugLevel > 0) then { diag_log format["[SRV-Respawn] %1 Wrong Rejoin; New Join %2", _playerNAME, name _pla]; };
};

//Clear Inventory
_player Call SRVRespawn_fnc_clearInventory;    

if(Call SRVRespawn_fnc_existPlayer) then {
    _player Call SRVRespawn_fnc_loadPlayer; 
}//Игрок существует, загружаем
else { 
    _player Call SRVRespawn_fnc_createPlayer; 
};//Игрок отсуствует, создаем





