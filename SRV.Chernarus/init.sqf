sleep 1;

addMissionEventHandler ["EntityKilled", { _this remoteExec ["SRVServer_core_killed", 2]; }];
addMissionEventHandler ["HandleDisconnect", { _this remoteExec ["SRVServer_core_disconnect", 2]; }];
addMissionEventHandler ["PlayerConnected", { _this remoteExec ["SRVServer_core_connect", 2]; }];

//ExecVM "SRVClient\fn_preInit.sqf";
