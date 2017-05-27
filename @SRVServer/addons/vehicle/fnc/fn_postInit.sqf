["VehicleKilled", { (_this select 0) Call SRVVehicle_fnc_delete; }] Call SRVCore_fnc_createEvent;
execVM format["vehicle\fnc\fn_loadVehicle.sqf"];
