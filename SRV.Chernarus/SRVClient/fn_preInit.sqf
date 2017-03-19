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
    ['SRVClient_load', 'SRVClient\fnc\srv_client_load.sqf'],
	['SRVClient_save', 'SRVClient\fnc\srv_client_save.sqf'],
	['SRVClient_exec', 'SRVClient\fnc\srv_client_exec.sqf'],
	['SRVClient_respawn', 'SRVClient\fnc\srv_client_respawn.sqf']
];
