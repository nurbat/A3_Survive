params ["_id", "_uid", "_name", "_jip", "_owner"];

if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] %1 Connected (%2)", _name, _owner]; };
waitUntil { !(isNil { Call SRVServer_db_loaded }) }; //SRVS_DB: Check Connection to SQL / Проверяем, установлено соеденение?
if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Connected SQL: %1", Call SRVServer_db_loaded]; };

if (_uid Call SRVServer_core_player_exist) then {
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Load Data for %1", _name]; };
    _data = _uid Call SRVServer_core_player_load; //SQL LOAD || Загрузка пользователя
    
    [_data, _owner] Call SRVServer_spawn_load_user;//Equip Loaded from data || Выдаем снаряжение


} else { //DONT PLAYER ON SQL || Если отсутвует персонаж
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Create user %1", _name]; };

	[_uid, _name] Call SRVServer_core_player_create;//SRV_Core: Create Player
	sleep 2;
    _position = selectRandom spawnPoint;

	[[_position, spawnHeight], { 
        removeAllWeapons player;
        removeAllAssignedItems player;
        removeGoggles player;
        removeHeadgear player;
        removeUniform player;
        removeVest player;
        removeBackpack player;

        _position = _this select 0;
        spawnHeight = _this select 1;

        player setDamage 0;
        player setPosASL [(_position select 0) + random (_position select 2), (_position select 1) + random (_position select 2), spawnHeight];

        player setVariable ["loadedIn", true, true];
        waitUntil {player getVariable ["loadedIn", false]};
        [player, getPlayerUID player] remoteExec ["SRVServer_core_player_update", 2];
   }, _owner] Call SRVServer_core_exec;

};