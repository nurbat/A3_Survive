execVM format["vehicle\%1.SRVConfig.sqf", worldName];

["SRVVehicle", false] Call SRVCore_fnc_loadModule;
SRVVehicle_blacklistedPositions = [];
SRVVehicle_spawnedVehicleTracker = [];
SRVVehicle_vehicleLocationCount = 0;