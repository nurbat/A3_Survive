params ["_player", "_id", "_uid", "_name"];
waitUntil { !(isNil { Call SRVServer_db_loaded }) }; //SRVS_DB: Check Connection to SQL / Проверяем, установлено соеденение?

if (_uid Call SRVServer_spawn_exist && alive _player) then {
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Disconnect: %1", _name]; };  
    [_player, _uid] Call SRVServer_spawn_update;
    deleteVehicle _player;
};