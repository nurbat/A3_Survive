/*
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Vehicle <OBJECT>
 * 2: CountKeys <INT>
 *
 * Return Value:
 * 0: <BOOL>
 *
 * Example:
 * [player, car, 3] call SRVVehicleLock_fnc_addVehicleKey
 *
 */
params["_unit", "_vehicle", "_countKeys"];
private["_keyClass", "_previousMags", "_newKeys"];

_keyClass = selectRandom SRVVehicleLock_Keys;
_previousMags = magazinesDetail _unit;
_unit addItemCargoGlobal [_keyClass, _countKeys];
_newKeys = (magazinesDetail _unit) - _previousMags;
if ((count _newKeys) == 0) exitWith { false; };//Dont empty
//Write Key, On Server, On SQL
[_newKeys, _keyClass, _vehicle, _unit] Call SRVVehicleLock_fnc_writeVehicleKeys;
true

