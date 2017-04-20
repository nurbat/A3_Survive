waitUntil { !(isNil { Call SRVDB_fnc_loaded }) };

_vehicleLoaded = Call SRVVehicle_fnc_load;
if(DebugLevel > 1) then { diag_log format["[SRV-Vehicle] LOAD %1", _vehicleLoaded]; };	
if !(isNil _vehicleLoaded) then {
    {
        if(DebugLevel > 1) then { diag_log format["[SRV-Vehicle] LOAD %1", _x]; };	

    //     Call SRVVehicle_fnc_objectCreate;

    } forEach _vehicleLoaded;
}

Call SRVVehicle_fnc_spawnVehiclesLocation;
Call SRVVehicle_fnc_spawnVehiclesRoad;
Call SRVVehicle_fnc_spawnVehiclesRandom;