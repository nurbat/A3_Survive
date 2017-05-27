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
 * ["key_red", car] call SRVVehicleLock_fnc_insert
 *
 */
params["_keyClass", "_vehicleID", "_unit"];

_insertstr = format["INSERT INTO vehicle_lock SET 
key_class = '%1', 
vehicle_id = '%2',
cargo = '%3',
owner = '%4'",
_keyClass, 
_vehicleID,
getPlayerUID _unit,
name _unit];

if(SRVVehicleLock_DebugLevel > 0) then { diag_log format["[SRV-VEHICLE-LOCK] CREATE KEY %1", typeOf _objectVehicle]; };
[0, _insertstr] call SRVDB_fnc_query;
(([0, "SELECT LAST_INSERT_ID()"] call SRVDB_fnc_query) select 0) select 0;