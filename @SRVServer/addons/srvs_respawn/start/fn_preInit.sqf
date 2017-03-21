#include "\srvs_respawn\SRVConfig.sqf";
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
	//SQL
	['SRVServer_spawn_create', 		'srvs_respawn\sql_fnc\SRVServer_spawn_create.sqf'],
	['SRVServer_spawn_delete', 		'srvs_respawn\sql_fnc\SRVServer_spawn_delete.sqf'],
	['SRVServer_spawn_update', 		'srvs_respawn\sql_fnc\SRVServer_spawn_update.sqf'],
	['SRVServer_spawn_exist', 		'srvs_respawn\sql_fnc\SRVServer_spawn_exist.sqf'],
	['SRVServer_spawn_load', 		'srvs_respawn\sql_fnc\SRVServer_spawn_load.sqf'],


	['SRVServer_spawn_equip', 		'srvs_respawn\fnc\SRVServer_spawn_equip.sqf'],
	['SRVServer_spawn_screen', 		'srvs_respawn\fnc\SRVServer_spawn_screen.sqf'],
	['SRVServer_spawn_died', 		'srvs_respawn\fnc\SRVServer_spawn_died.sqf'],
	['SRVServer_spawn_createBambi', 'srvs_respawn\fnc\SRVServer_spawn_createBambi.sqf'],
	['SRVServer_spawn_init', 		'srvs_respawn\fnc\SRVServer_spawn_init.sqf'],
	['SRVServer_spawn_load_user', 	'srvs_respawn\fnc\SRVServer_spawn_load_user.sqf'],
	['SRVServer_spawn_disconnect', 	'srvs_respawn\fnc\SRVServer_spawn_disconnect.sqf'],
	['SRVServer_spawn_connected', 	'srvs_respawn\fnc\SRVServer_spawn_connected.sqf']
];
