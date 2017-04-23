{
    [] execVM format["SRV\%1\preInit.sqf", _x];
} forEach (missionNamespace getVariable ["SRVModule", []]);