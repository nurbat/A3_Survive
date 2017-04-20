_vehicleObject = _this;

_vehicleName = _vehicleObject getVariable["vehicleName", ""];
_vehicleId = _vehicleObject getVariable["vehicleId", 0];

_vehiclePos = getPosASL _vehicleObject;
_vectorDirection = vectorDir _vehicleObject;
_vectorUp = vectorUp _vehicleObject;


_vehiclePos = getPosASL _vehicleObject;
_vectorDirection = vectorDir _vehicleObject;
_vectorUp = vectorUp _vehicleObject;

//HIT_POINTS
_availableHitpoints = getAllHitPointsDamage _vehicleObject;
_vehicleHitpoints = [];
if!(_availableHitpoints isEqualTo [])then
{
	{
		_vehicleHitpoints pushBack [_x ,_vehicleObject getHitPointDamage _x];
	}
	forEach (_availableHitpoints select 0);
};
//AMMO
_vehicleAmmo = [];
{
	_vehicleAmmo pushBack [_x select 0, _x select 1, _x select 2];
} forEach magazinesAllTurrets _vehicleObject;

_updatestr = format ["UPDATE vehicle SET 
name = '%1', 
class = '%2',
is_locked = %3,
fuel = %4,
damage = %5,
hitpoints = '%6',
position_x = %7
position_y = %8,
position_z = %9,
direction_x = %10,
direction_y = %11,
direction_z = %12,
up_x = %13,
up_y = %14,
up_z = %15,
ammo = '%16'
WHERE id = '%17'", 
_vehicleName, 
typeOf _vehicleObject,
locked _vehicleObject,
fuel _vehicleObject,
damage _vehicleObject,
_vehicleHitpoints,
_vehiclePos select 0,
_vehiclePos select 1,
_vehiclePos select 2,
_vectorDirection select 0,
_vectorDirection select 1,
_vectorDirection select 2,
_vectorUp select 0,
_vectorUp select 1,
_vectorUp select 2,
_vehicleAmmo,
_vehicleId];//UID %31
if(DebugLevel > 1) then { diag_log format["[SRVS-VEHICLE] %1", _updatestr]; };
[2, _updatestr] call SRVDB_fnc_query;