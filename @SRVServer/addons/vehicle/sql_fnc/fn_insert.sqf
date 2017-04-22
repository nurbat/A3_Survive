_vehicleName = _this select 0;
_vehicleObject = _this select 1;

_vehiclePos = getPosATL _vehicleObject;
_vectorDirection = vectorDir _vehicleObject;
_vectorUp = vectorUp _vehicleObject;

_insertstr = format["INSERT INTO vehicle SET 
name = '%1', 
class = '%2',
is_locked = '%3',
fuel = '%4',
damage = '%5',
hitpoints = '%6',
position = '%7',
direction = '%8',
up = '%9',
ammo = '%10'",
_vehicleName, 
typeOf _vehicleObject,
locked _vehicleObject,
fuel _vehicleObject,
damage _vehicleObject,
_vehicleObject Call SRVCore_fnc_getAllHitPointsDamage,
_vehiclePos,
_vectorDirection,
_vectorUp,
_vehicleObject Call SRVCore_fnc_getVehicleAmmo
];
if(DebugLevel > 1) then { diag_log format["[SRVS-VEHICLE] Save %1", typeOf _vehicleObject]; };
[0, _insertstr] call SRVDB_fnc_query;
(([0, "SELECT LAST_INSERT_ID()"] call SRVDB_fnc_query) select 0) select 0;