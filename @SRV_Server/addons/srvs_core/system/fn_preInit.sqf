#include "\srvs_core\SRVConfig.sqf";
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
	['SRVServer_core_getCargo', 'srvs_core\fnc\SRVServer_core_getCargo.sqf'],
	['SRVServer_core_getMagazine', 'srvs_core\fnc\SRVServer_core_getMagazine.sqf'],
	['SRVServer_core_getHitPoint', 'srvs_core\fnc\SRVServer_core_getHitPoint.sqf'],
	['SRVServer_core_getLoadedMagazines', 'srvs_core\fnc\SRVServer_core_getLoadedMagazines.sqf'],
	['SRVServer_core_respawn', 'srvs_core\fnc\SRVServer_core_respawn.sqf'],
	['SRVServer_core_killed', 'srvs_core\fnc\SRVServer_core_killed.sqf'],
	['SRVServer_core_esc_menu', 'srvs_core\fnc\SRVServer_core_esc_menu.sqf'],
	['SRVServer_core_disconnect', 'srvs_core\fnc\SRVServer_core_disconnect.sqf'],
	['SRVServer_core_exec', 'srvs_core\fnc\SRVServer_core_exec.sqf'],
	['SRVServer_core_connect', 'srvs_core\fnc\SRVServer_core_connect.sqf'],
	['SRVServer_core_player_delete', 'srvs_core\fnc\SRVServer_core_player_delete.sqf'],
	['SRVServer_core_player_create', 'srvs_core\fnc\SRVServer_core_player_create.sqf'],
	['SRVServer_core_player_exist', 'srvs_core\fnc\SRVServer_core_player_exist.sqf'],
	['SRVServer_core_player_load', 'srvs_core\fnc\SRVServer_core_player_load.sqf'],
	['SRVServer_core_player_update', 'srvs_core\fnc\SRVServer_core_player_update.sqf']
];

