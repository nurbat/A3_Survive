params ["_player"];

[saveDelay, { 
    _this spawn { 
        while { alive player } do {
            sleep _this;
            [ [player, getPlayerUID player], { [(_this select 0), (_this select 1)] Call SRVServer_core_player_update; } ] remoteExecCall ["SRVServer_core_execClient", 2];
        };
    };
}, owner _player] Call SRVServer_core_execServer;

(owner _player) Call SRVServer_spawn_screen;

if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] %1 (%2) Respawned", name _player, owner _player]; };
waitUntil { !(isNil { Call SRVServer_db_loaded }) }; //SRVS_DB: Check Connection to SQL / Проверяем, установлено соеденение?

//Если игрок существует, загружаем
if ((getPlayerUID _player) Call SRVServer_spawn_exist) then { //Exist player on sql
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Load: %1", name _player]; };
    _data = (getPlayerUID _player) Call SRVServer_spawn_load; //SQL LOAD || Загрузка пользователя
    [_data, _player] Call SRVServer_spawn_load_user;//Equip Loaded from data || Выдаем снаряжение

//Если игрока в бд нет, создаем нового по уст.шаблону
} else { //DONT PLAYER ON SQL
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Create: %1", name _player]; };

	[(getPlayerUID _player), name _player] Call SRVServer_spawn_create;//SRV_Core: Create Player
	sleep 2;
    _player Call SRVServer_spawn_createBambi;
};