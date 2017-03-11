private ['_code', '_function', '_file'];
{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;
	
    _code = compileFinal (preprocessFileLineNumbers _file);

    missionNamespace setVariable [_function, _code];
}
forEach 
[
	['survarium_core_player_delete', 'survarium_core\functions\survarium_core_player_delete.sqf'],
	['survarium_core_player_create', 'survarium_core\functions\survarium_core_player_create.sqf'],
	['survarium_core_player_exist', 'survarium_core\functions\survarium_core_player_exist.sqf'],
	['survarium_core_player_load', 'survarium_core\functions\survarium_core_player_load.sqf'],
	['survarium_core_player_update', 'survarium_core\functions\survarium_core_player_update.sqf']
];
