{
	if !(isPlayer _x) then
	{
		deleteVehicle _x;
	};
} forEach playableUnits;

["EntityKilled", { _this Call SRVCore_fnc_eventNpcKilled; }] Call SRVCore_fnc_createEvent;
["EntityKilled", { _this Call SRVCore_fnc_eventPlayerKilled; }] Call SRVCore_fnc_createEvent;
["EntityKilled", { _this Call SRVCore_fnc_eventVehicleKilled; }] Call SRVCore_fnc_createEvent;
//["Respawn", { (owner (_this select 0)) Call SRVCore_fnc_eventCreateLocal; }] Call SRVCore_fnc_createEvent;
["PlayerConnected", { (_this select 4) Call SRVCore_fnc_eventCreateLocal; }] Call SRVCore_fnc_createEvent;

diag_log format[""];
diag_log format[""];
diag_log format[""];
diag_log format["========MODULES========="];
{
	diag_log format["%1 [OK]", _x select 0];
} forEach SRVCore_Modules;
diag_log format["======END_MODULES======="];
diag_log format[""];
diag_log format[""];
diag_log format[""];

false Call SRVCore_fnc_serverLock;
