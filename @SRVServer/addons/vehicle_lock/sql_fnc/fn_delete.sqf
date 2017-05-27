/*
 * Arguments:
 * 0: Keys <ARRAY> From Call getVehicleKeys
 *
 * Return Value:
 * None
 *
 * Example:
 * 56 call SRVVehicleLock_fnc_deleteKey;
 *
 */

{

    _insertstr = format["DELETE FROM vehicle_lock WHERE id = %1", _x];
    if(SRVVehicleLock_DebugLevel > 0) then { diag_log format["[SRV-VEHICLE-LOCK] Key Remove ## %1", _this]; };
    [0, _insertstr] call SRVDB_fnc_query;

} forEach (_this select 0);


