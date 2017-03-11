sleep 1;

//ExecVM "survarium_client\fn_preInit.sqf";
ExecVM "survarium_client\functions\survarium_client_save.sqf";
ExecVM "survarium_client\functions\survarium_client_load.sqf";
ExecVM "survarium_client\functions\survarium_client_respawn.sqf";
