#include "\srvs_callback\SRVConfig.sqf";
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
    //Get_CallBack
	['SRVServer_callback_buildingChanged',      'srvs_callback\getCallback\SRVServer_callback_buildingChanged.sqf'],    //Destroed object
	['SRVServer_callback_entityRespawned',      'srvs_callback\getCallback\SRVServer_callback_entityRespawned.sqf'],    //Respawn player
	['SRVServer_callback_playerConnected',      'srvs_callback\getCallback\SRVServer_callback_playerConnected.sqf'],    //Connect player
	['SRVServer_callback_handleDisconnect',     'srvs_callback\getCallback\SRVServer_callback_handleDisconnect.sqf'],   //Disconnect player
	['SRVServer_callback_entityKilled',         'srvs_callback\getCallback\SRVServer_callback_entityKilled.sqf'],       //Player is died
     
	//Set_CallBack
	['SRVServer_callback_setBuildingChanged',   'srvs_callback\setCallback\SRVServer_callback_setBuildingChanged.sqf'],
	['SRVServer_callback_setEntityRespawned',   'srvs_callback\setCallback\SRVServer_callback_setEntityRespawned.sqf'],
	['SRVServer_callback_setEntityKilled',      'srvs_callback\setCallback\SRVServer_callback_setEntityKilled.sqf'],
	['SRVServer_callback_setHandleDisconnect',  'srvs_callback\setCallback\SRVServer_callback_setHandleDisconnect.sqf'],
	['SRVServer_callback_setPlayerConnected',   'srvs_callback\setCallback\SRVServer_callback_setPlayerConnected.sqf']
];

