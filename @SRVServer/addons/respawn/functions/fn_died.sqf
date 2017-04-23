params ["_unit", "_killer"];
if(isPlayer _unit && (_unit getVariable["loadedIn", false])) then {
    _unit Call SRVRespawn_fnc_delete;
	_unit setVariable ["loadedIn", false, true];//STATUS IS LOADED
	if(SRVRespawn_DebugLevel > 2) then { diag_log format["[SRVS-RESPAWN] %1 of died", name _unit]; };
};