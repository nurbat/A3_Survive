params ["_id", "_uid", "_name", "_jip", "_owner"];

[saveDelay, { 
    _this spawn { 
        while { alive player } do {
            sleep _this;
            [player, getPlayerUID player] remoteExec ["SRVServer_core_player_update", 2];
        };
    };
}, _owner] Call SRVServer_core_exec;

_owner Call SRVServer_spawn_screen;

if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] %1 (%2) Respawned", _name, _owner]; };
waitUntil { !(isNil { Call SRVServer_db_loaded }) }; //SRVS_DB: Check Connection to SQL / Проверяем, установлено соеденение?

//Если игрок существует, загружаем
if (_uid Call SRVServer_core_player_exist) then { //Exist player on sql
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Load: %1", _name]; };
    _data = _uid Call SRVServer_core_player_load; //SQL LOAD || Загрузка пользователя
    [_data, _owner] Call SRVServer_spawn_load_user;//Equip Loaded from data || Выдаем снаряжение

//Если игрока в бд нет, создаем нового по уст.шаблону
} else { //DONT PLAYER ON SQL
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Create: %1", _name]; };

	[_uid, _name] Call SRVServer_core_player_create;//SRV_Core: Create Player
	sleep 2;
    _this Call SRVServer_spawn_createBambi;
};