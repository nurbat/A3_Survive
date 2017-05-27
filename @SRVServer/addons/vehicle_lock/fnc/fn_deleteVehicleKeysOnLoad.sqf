/*
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * cars call SRVVehicleLock_fnc_deleteVehicleKeysOnLoad
 *
 */
private["_keyVehicles", "_keys"];
_keyVehicles = SRVVehicleLock_Keys select 3;
_keys = [];
{
    if !(_x in _keyVehicles) { 
        _keys append _x call SRVVehicleLock_fnc_getVehicleKeys;
    };
} forEach vehicles;
_keys call SRVVehicleLock_fnc_delete;