_insertstr = format["DELETE FROM vehicle WHERE id = %1", _this];
if(DebugLevel > 1) then { diag_log format["[SRVS-VEHICLE] %1", _insertstr]; };
[0, _insertstr] call SRVDB_fnc_query;