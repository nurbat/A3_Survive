/*
 * Arguments:
 * 0: Keys <ARRAY>
 * 1: KeyClass <STRING>
 * 2: Vehicle <OBJECT>
 * 3: Owner <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * keys call SRVVehicleLock_fnc_deleteVehicleKeys;
 *
 */
params["_keys", "_keyClass", "_vehicle", "_unit"];
private["_vehicleID"];
_vehicleID = _vehicle getVariable["DatabaseID", 0];
{
    _keyID = 0;
    if(_vehicleID > 0) then {
        _keyID = [_keyClass, _vehicleID, _unit] Call SRVVehicleLock_fnc_insert;
    };
    //[ID, KeyName, KeyClass, KeyVehicle]
    SRVVehicleLock_Keys pushBack [_x, _vehicleID, _keyClass, _vehicle];

} forEach _keys;
