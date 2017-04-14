#include "\srvs_loot\SRVConfig.sqf";
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
	['SRVServer_loot_createLoot', 'srvs_loot\fnc\SRVServer_loot_createLoot.sqf'],
	['SRVServer_loot_getGroup', 'srvs_loot\fnc\SRVServer_loot_getGroup.sqf'],
	['SRVServer_loot_getItems', 'srvs_loot\fnc\SRVServer_loot_getItems.sqf'],
	['SRVServer_loot_request', 'srvs_loot\fnc\SRVServer_loot_request.sqf']
];

