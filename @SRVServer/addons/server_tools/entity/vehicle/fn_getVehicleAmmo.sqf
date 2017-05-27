/*
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Ammo <ARRAY>
 *
*/
params["_vehicle"];
private _vehicleAmmo = [];
{
	_vehicleAmmo pushBack [_x select 0, _x select 1, _x select 2];
} forEach magazinesAllTurrets _vehicle;
_vehicleAmmo