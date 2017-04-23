//_insertstr = format["createPlayer:%1:%2", _this select 0, _this select 1];
_insertstr = format["INSERT INTO player SET uid = '%1', name = '%2'", _this select 0, _this select 1];
if(SRVRespawn_DebugLevel > 2) then { diag_log format["[SRVS-SPAWN] %1", _insertstr]; };
[0, _insertstr] call SRVDB_fnc_query;