_vehicleUID = _this select 0;
_vehicleObject = _this select 1;

_vehicleUID = _vehicleObject getVariable["OwnerName", ""];
_vehicleDatabase = _vehicleObject getVariable["DatabaseID", 0];

_vehicleDatabase = ["Player", _vehicleObject] Call SRVVehicle_fnc_insert;

_vehicleObject setVariable["DatabaseID", _vehicleDatabase, true];
_vehicleObject setVariable["OwnerName", _vehicleUID, true];
_vehicleObject setVariable["IsPersistent", true, true];

_vehicleObject addEventHandler ["GetOut", { _this call SRVVehicle_fnc_update}];