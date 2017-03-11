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
	if(spawnDebug) then { diag_log "[LOG-SPAWN] PLAYER-LOAD: FAIL"; };
	_player Call survarium_core_player_create;//SRV_Core: INSERT Player
	
	//MOVE PLAYER TO POSITION
	_position = selectRandom spawnPoint;
	_player setPos [(_position select 0) + random (_position select 2), (_position select 1) + random (_position select 2), spawnHeight];
	
	_player setDamage 0;//HEALTH Player
	_player setVariable ["loadedIn", true, true];

	//uiSleep 2;
	
	//[_player, true] spawn Server_fnc_initStats;	
}
