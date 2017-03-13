/*private ['_code', '_function', '_file'];
{
    _code = '';
    _function = _x select 0;
    _file = _x select 1;
	
    _code = compileFinal (preprocessFileLineNumbers _file);

    missionNamespace setVariable [_function, _code];
}
forEach 
[
	['survarium_client_load', 'survarium_client/functions/survarium_client_load.sqf'],
	['survarium_client_save', 'survarium_client/functions/survarium_client_save.sqf'],
	['survarium_client_respawn', 'survarium_client/functions/survarium_client_respawn.sqf']
];
*/
if (isServer) then {

}else
{
	//ExecVM "functions\survarium_client_load.sqf";
	//ExecVM "functions\survarium_client_respawn.sqf";
};