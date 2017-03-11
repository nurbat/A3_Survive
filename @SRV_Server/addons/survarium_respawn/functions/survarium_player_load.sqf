params ["_player", "_firstLogin"];
diag_log "Wait Load";
waitUntil {!(isNil{Call survarium_db_loaded})};
diag_log (Call survarium_db_loaded);

_uid = getPlayerUID _player;
if (_uid Call survarium_core_player_exist) then {
	_data = _uid Call survarium_core_player_load;
	diag_log "Wait OK";
}else { //Игрока нету
	diag_log "Wait Err";
	_player Call survarium_core_player_create;
	
	//uiSleep 2;
	
	//[_player, true] spawn Server_fnc_initStats;	
}
