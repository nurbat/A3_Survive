_insertstr = format["deletePlayer:%1", _this];
if!(_player getVariable ["loadedIn", false]) exitWith { }; //EXIT PLAYER DONT IS LOAD
if(spawnDebug) then { diag_log format["[SRVS-SPAWN] %1", _insertstr]; };
[0, _insertstr] call SRVServer_db_query;