_vehicleUID = _this select 0;
_vehicleObject = _this select 1;

_vehicleDatabase = _vehicleObject getVariable["DatabaseID", 0];
_vehicleDatabase = [_vehicleUID, _vehicleObject] Call SRVVehicle_fnc_insert;

_vehicleObject setVariable["DatabaseID", _vehicleDatabase, true];
_vehicleObject setVariable["OwnerName", _vehicleUID, true];
_vehicleObject setVariable["IsPersistent", true, true];

_vehicleObject addEventHandler ["GetOut", { (_this select 0) call SRVVehicle_fnc_update}];