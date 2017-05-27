/*
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * <STRING>
 *
 * Example:
 * keys call SRVVehicleLock_fnc_VehicleKeyCargo
 *
 */
params["_unit"];

if(isPlayer _unit) exitWith {
    format["player:%1", getPlayerUID _unit];
};
if(_unit in vehicles) exitWith {
    format["vehicle:%1", _unit getVariable["DatabaseID", 0]];
};
