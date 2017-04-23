_vehicleDatabase = _this getVariable["DatabaseID", 0];

if(_vehicleDatabase > 0) then 
{
    _insertstr = format["DELETE FROM vehicle WHERE id = %1", _vehicleDatabase];

    _this setVariable["DatabaseID", 0, true];
    _this setVariable["OwnerName", "", true];
    _this setVariable["IsPersistent", false, true];
    _this removeAllEventHandlers "GetOut";


    if(SRVVehicle_DebugLevel > 0) then { diag_log format["[SRVS-VEHICLE] %1", _insertstr]; };
    [0, _insertstr] call SRVDB_fnc_query;
};