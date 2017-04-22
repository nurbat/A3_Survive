_vehicleDatabase = _this getVariable["DatabaseID", 0];
_insertstr = format["DELETE FROM vehicle WHERE id = %1", _vehicleDatabase];

_this setVariable["DatabaseID", 0, true];
_this setVariable["OwnerName", "", true];
_this setVariable["IsPersistent", false, true];


if(DebugLevel > 1) then { diag_log format["[SRVS-VEHICLE] %1", _insertstr]; };
[0, _insertstr] call SRVDB_fnc_query;