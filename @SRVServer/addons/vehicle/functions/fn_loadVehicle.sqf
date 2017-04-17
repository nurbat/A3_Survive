waitUntil { !(isNil { Call SRVDB_fnc_loaded }) };
//_data = SRVVehicle_fnc_load;

Call SRVVehicle_fnc_spawnVehiclesLocation;
Call SRVVehicle_fnc_spawnVehiclesRoad;
Call SRVVehicle_fnc_spawnVehiclesRandom;