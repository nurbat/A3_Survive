execVM format["vehicle\%1.SRVConfig.sqf", worldName];

["SRVVehicle", false] Call SRVCore_fnc_loadModule;
SRVVehicle_var_trackedType = [];
SRVVehicle_var_trackedValue = [];
SRVVehicle_var_vehicleLoaded = [];
SRVVehicle_var_vehicleCreated = [];
SRVVehicle_var_vehicleCount = 0;