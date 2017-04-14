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
	['SRVServer_loot_request', 'srvs_loot\fn_server\SRVServer_loot_request.sqf'],
	['SRVClient_loot_init', 'srvs_loot\fn_client\SRVClient_loot_init.sqf']
];

