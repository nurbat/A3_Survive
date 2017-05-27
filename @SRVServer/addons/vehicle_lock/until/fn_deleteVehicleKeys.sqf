/*
 * Arguments:
 * 0: FindKeys <ARRAY> [[KeyNames], [KeyClasses], [KeyVehicles], [KeyIndex]]
 *
 * Return Value:
 * None
 *
 * Example:
 * keys call SRVVehicleLock_fnc_deleteVehicleKeys;
 *
 */

{ SRVVehicleLock_Keys deleteAt _x; } forEach (_this select 3);