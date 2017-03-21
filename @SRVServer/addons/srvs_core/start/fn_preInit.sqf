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
	['SRVServer_core_esc_menu', 'srvs_core\fnc\SRVServer_core_esc_menu.sqf'],
	['SRVServer_core_execServer', 'srvs_core\fnc\SRVServer_core_execServer.sqf'],
	['SRVServer_core_execClient', 'srvs_core\fnc\SRVServer_core_execClient.sqf']
];

