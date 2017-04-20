//[GroupName, VehicleName, Damage, Positiion, isPersist]
_uid = _this select 0;
_className = _this select 1;
_damage = _this select 2;
_position = _this select 3;
_usePersist = _this select 4;

// Sanitize position
if(count _position isEqualTo 2) then { _position pushback 0; };
if(surfaceIsWater _position) exitWith{};

// Create the vehicle
_vehicle = [_className, _position, (random 360), true] call SRVVehicle_fnc_objectCreate;
_vehicle lock 0;

// Set damage
_hitpoints = _className call SRVCore_fnc_vehicleGetHitPoints;
{
	if (typeName _damage isEqualTo "ARRAY") then
	{
		_damageMin = (_damage select 0);
		_damageMax = (_damage select 1);
		_damageDiff = _damageMin - _damageMax;
		_damageChance = random _damageDiff;
		_damage = _damageChance + _damageMin;
		_vehicle setHitPointDamage [_x, _damage];
	}
	else
	{
		_damage = _damage;
		_vehicle setHitPointDamage [_x, _damage];
	};
} forEach _hitpoints;

_vehicle setVehicleAmmoDef (vehiclesAmmoPercent / 100);
_vehicle setFuel (vehiclesFuelPercent / 100);

// Add vehicle to database.
if(_usePersist) then {
	[_uid, _vehicle] call SRVVehicle_fnc_insert;
};
_vehicle setVariable ["IsPersistent", _usePersist];

// Add a debug marker
if (DebugLevel > 1) then
{
	vehicleLocationCount = vehicleLocationCount + 1;
	_debugMarker = createMarker ["vehicleMarker#"+str vehicleLocationCount, _vehicle];
	_debugMarker setMarkerColor "ColorOrange";
	_debugMarker setMarkerType "mil_dot_noShadow";
};
_vehicle