params ["_player"];
if(spawnDebug) then { diag_log "[LOG-SPAWN] Check Connection SQL"; };
waitUntil {!(isNil{Call survarium_db_loaded})};//SRV_DB: Check Connection to SQL
if(spawnDebug) then { diag_log "[LOG-SPAWN] Coonect SQL: OK"; };

_uid = getPlayerUID _player;
//SRV_Core: Check Player


	if (_uid Call survarium_core_player_exist) then {
		if(spawnDebug) then { diag_log "[LOG-SPAWN] PLAYER-LOAD: OK"; };
		_data = _uid Call survarium_core_player_load; //SRV_Core: Load Player
		[_player, _data] call survarium_respawn_inventory;
		
	}else { //DONT PLAYER ON SQL
		if(spawnDebug) then { diag_log "[LOG-SPAWN] PLAYER-LOAD: CREATE"; };
		_player Call survarium_core_player_create;//SRV_Core: Create Player
		sleep 2;
		_player Call survarium_respawn_first;

	};

