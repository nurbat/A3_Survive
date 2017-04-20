private["_object","_vehicleAmmo"];
_object = _this;
_vehicleAmmo = [];
{
	_vehicleAmmo pushBack [_x select 0, _x select 1, _x select 2];
} forEach magazinesAllTurrets _object;
_vehicleAmmo