#include "\survarium_respawn\survarium_respawn_config.sqf";
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
	['survarium_respawn_first', 'survarium_respawn\functions\survarium_respawn_first.sqf'],
	['survarium_respawn_load', 'survarium_respawn\functions\survarium_respawn_load.sqf'],
	['survarium_respawn_inventory', 'survarium_respawn\functions\survarium_respawn_inventory.sqf']
];
