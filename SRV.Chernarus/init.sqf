sleep 1;

addMissionEventHandler ["BuildingChanged", { [_this, { _this Call SRVCall_fnc_buildingChanged; } ] remoteExec ["SRVCore_fnc_execClient", 2]; }];
addMissionEventHandler ["EntityRespawned", { [_this, { _this Call SRVCall_fnc_entityRespawned; } ] remoteExec ["SRVCore_fnc_execClient", 2]; }];
addMissionEventHandler ["EntityKilled", { [_this, { _this Call SRVCall_fnc_entityKilled; } ] remoteExec ["SRVCore_fnc_execClient", 2]; }];
addMissionEventHandler ["HandleDisconnect", { [_this, { _this Call SRVCall_fnc_handleDisconnect; } ] remoteExec ["SRVCore_fnc_execClient", 2]; }];
addMissionEventHandler ["PlayerConnected", { [_this, { _this Call SRVCall_fnc_playerConnected; } ] remoteExec ["SRVCore_fnc_execClient", 2]; }];