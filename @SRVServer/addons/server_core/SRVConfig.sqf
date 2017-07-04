SRVCore_ServerCommandPassword = "d4cf&*%^t";
SRVCore_DebugLevel = 3;

//ChatCommand
SRVCore_cfg_CommandEnable = true;
SRVCore_cfg_SpecialChar = "#";
SRVCore_cfg_Commands = 
[
    ["offroad", { "C_Offroad_01_F" createVehicle position (_this select 0); }],
    ["heli", { "C_Heli_Light_01_civil_F" createVehicle position (_this select 0); }],
    ["delete", { [[], { deleteVehicle cursorObject; }, (_this select 0)] Call SRVCore_fnc_execCommand; }],
    ["test", { diag_log "TEST COMMAND"; }]
];