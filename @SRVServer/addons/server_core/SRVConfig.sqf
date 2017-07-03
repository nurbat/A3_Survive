SRVCore_ServerCommandPassword = "d4cf&*%^t";
SRVCore_DebugLevel = 3;

//ChatCommand
SRVCore_cfg_CommandEnable = true;
SRVCore_cfg_SpecialChar = "#";
SRVCore_cfg_Commands = 
[
    ["offroad", { _veh = "C_Offroad_01_F" createVehicle position (_this select 0); _veh setVariable ["BIS_enableRandomization", false]; }],
    ["heli", { createVehicle ["ah1w", position (_this select 0), [], 0, "FLY"]; }],
    ["test", { diag_log "TEST COMMAND"; }]
];