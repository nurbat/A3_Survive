params ["_player"];

[SRVRespawn_saveDelay, { 
    _this spawn { 
        while { alive player } do {
            sleep _this;
            [ [player, getPlayerUID player], { [(_this select 0), (_this select 1)] Call SRVRespawn_fnc_update; } ] remoteExec ["SRVCore_fnc_execClient", 2];
        };
    };
}, owner _player] Call SRVCore_fnc_execServer;

(owner _player) Call SRVRespawn_fnc_screen;

if(SRVRespawn_DebugLevel > 2) then { diag_log format["[SRVS-RESPAWN] %1 (%2) Respawned", name _player, owner _player]; };
waitUntil { !(isNil { Call SRVDB_fnc_loaded }) }; //SRVS_DB: Check Connection to SQL / Проверяем, установлено соеденение?

//Если игрок существует, загружаем
if ((getPlayerUID _player) Call SRVRespawn_fnc_exist) then { //Exist player on sql
    if(SRVRespawn_DebugLevel > 2) then { diag_log format["[SRVS-RESPAWN] Load: %1", name _player]; };
    _data = (getPlayerUID _player) Call SRVRespawn_fnc_load; //SQL LOAD || Загрузка пользователя
    if(SRVRespawn_DebugLevel > 2) then { diag_log _data; };
    [_data, _player] Call SRVRespawn_fnc_load_user;//Equip Loaded from data || Выдаем снаряжение

//Если игрока в бд нет, создаем нового по уст.шаблону
} else { //DONT PLAYER ON SQL
    if(SRVRespawn_DebugLevel > 2) then { diag_log format["[SRVS-RESPAWN] Create: %1", name _player]; };

	[(getPlayerUID _player), name _player] Call SRVRespawn_fnc_create;//SRV_Core: Create Player
	sleep 2;
    _player Call SRVRespawn_fnc_createBambi;
};