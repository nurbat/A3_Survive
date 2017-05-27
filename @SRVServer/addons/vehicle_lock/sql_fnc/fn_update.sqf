/*
 * Arguments:
 * 0: KeyClass <STRING>
 * 1: VehicleID <INT>
 * 2: Unit <OBJECT>
 *
 * Return Value:
 * 0: Keys <ARRAY>
 *
 * Example:
 * ["key_red", car] call SRVVehicleLock_fnc_update
 *
 */

    _updatestr = format ["UPDATE vehicle_lock SET 
    cargo = '%1'
    WHERE id = '%2'", 
    ];//UID %31
    if(SRVVehicle_DebugLevel > 1) then { diag_log format["[SRV-VEHICLE-LOCK] %1", _updatestr]; };
    [2, _updatestr] call SRVDB_fnc_query;
