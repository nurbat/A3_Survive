//Check loot created or exist. time. info loot
params ["_buildings"];

_timeDelay = configFile >> SRVConfig >> SRVLoot >> lootLife;

{
    //Building Config
    _buildingConfig = configFile >> SRVConfig >> SRVLoot >> typeOf _x;
    
    if(_x getVariable ["startTime", 0] < time) then { //TimeOut
        _time = time + _timeDelay;//setDeleteTime Loot

        //_building setVariable ["ExileLootSpawnedAt", time];


        if() then {

        };
    } else {

    };
    
} forEach _buildings;

