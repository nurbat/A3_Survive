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
	['survarium_core_player_create', 'survarium_core\functions\survarium_core_player_create.sqf'],
	['survarium_core_player_exist', 'survarium_core\functions\survarium_core_player_exist.sqf'],
	['survarium_core_player_load', 'survarium_core\functions\survarium_core_player_load.sqf'],
	['survarium_core_account_create', 'survarium_core\functions\survarium_core_account_create.sqf'],
	['survarium_core_account_exist', 'survarium_core\functions\survarium_core_account_exist.sqf'],
	['survarium_core_account_load', 'survarium_core\functions\survarium_core_account_load.sqf']
];
