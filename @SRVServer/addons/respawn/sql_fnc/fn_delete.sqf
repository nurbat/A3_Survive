_insertstr = format["DELETE FROM player WHERE uid = %1", getPlayerUID _this];
if!(_this getVariable ["loadedIn", false]) exitWith { }; //EXIT PLAYER DONT IS LOAD
if(SRVRespawn_DebugLevel > 1) then { diag_log format["[SRVS-SPAWN] %1", _insertstr]; };
[0, _insertstr] call SRVDB_fnc_query;