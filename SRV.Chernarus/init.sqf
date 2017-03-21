sleep 1;

addMissionEventHandler ["BuildingChanged", { [_this, { _this Call SRVServer_callback_buildingChanged; } ] remoteExecCall ["SRVServer_core_execClient", 2]; }];
addMissionEventHandler ["EntityRespawned", { [_this, { _this Call SRVServer_callback_entityRespawned; } ] remoteExecCall ["SRVServer_core_execClient", 2]; }];
addMissionEventHandler ["EntityKilled", { [_this, { _this Call SRVServer_callback_entityKilled; } ] remoteExecCall ["SRVServer_core_execClient", 2]; }];
addMissionEventHandler ["HandleDisconnect", { [_this, { _this Call SRVServer_callback_handleDisconnect; } ] remoteExecCall ["SRVServer_core_execClient", 2]; }];
addMissionEventHandler ["PlayerConnected", { [_this, { _this Call SRVServer_callback_playerConnected; } ] remoteExecCall ["SRVServer_core_execClient", 2]; }];