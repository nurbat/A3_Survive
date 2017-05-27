/*
 * Arguments:
 * 0: Class <STRING>
 * 1: Position <ARRAY>
 * 2: DirAndUp <ARRAY> _vehicleDirection OR [_vehicleDirection, _vehicleUp] (OPTIONAL)
 * 3: Option <ARRAY> [[DamageMin, DamageMax] or Damage, Fuel, Ammo] (OPTIONAL)
 *
 * Return Value:
 * Vehicle <OBJECT>
 *
*/
params["_vehicleClass", "_vehiclePosition", "_vehicleDirection"];
if(isNil "_vehicleDirection") then { _vehicleDirection = (random 360); };

private _SRVVehicle_var_object = [_vehicleClass, _vehiclePosition, _vehicleDirection] Call SRVVehicle_fnc_createVehicle;
_SRVVehicle_var_object setVariable ["isPersistent", false, true];
_SRVVehicle_var_object
