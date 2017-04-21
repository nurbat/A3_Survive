_vehicleObject = _this;

_vehicleName = _vehicleObject getVariable["OwnerName", ""];
_vehicleId = _vehicleObject getVariable["DatabaseID", 0];

_vehiclePos = getPosASL _vehicleObject;
_vectorDirection = vectorDir _vehicleObject;
_vectorUp = vectorUp _vehicleObject;


_vehiclePos = getPosASL _vehicleObject;
_vectorDirection = vectorDir _vehicleObject;
_vectorUp = vectorUp _vehicleObject;

_updatestr = format ["UPDATE vehicle SET 
name = '%1', 
class = '%2',
is_locked = '%3',
fuel = '%4',
damage = '%5',
hitpoints = '%6',
position = '%7',
direction = '%8',
up = '%9',
cargo_items = '%10',
cargo_magazines = '%11',
cargo_weapons = '%12',
cargo_container = '%13',
ammo = '%14'
WHERE id = '%15'", 
_vehicleName, 
typeOf _vehicleObject,
locked _vehicleObject,
fuel _vehicleObject,
damage _vehicleObject,
_vehicleObject Call SRVCore_fnc_getAllHitPointsDamage,
_vehiclePos,
_vectorDirection,
_vectorUp,
_vehicleObject Call SRVCore_fnc_getItemCargo,
magazinesAmmoCargo _vehicleObject,
weaponsItemsCargo _vehicleObject,
_vehicleObject Call SRVCore_fnc_getEveryContainer,
_vehicleObject Call SRVCore_fnc_getVehicleAmmo,
_vehicleId];//UID %31
if(DebugLevel > 1) then { diag_log format["[SRVS-VEHICLE] %1", _updatestr]; };
[2, _updatestr] call SRVDB_fnc_query;