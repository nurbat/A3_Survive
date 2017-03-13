sleep 1;

addMissionEventHandler ["HandleDisconnect",
{
	diag_log "Client disconnected";
	diag_log _this;
    deleteVehicle (_this select 0);
}];

addMissionEventHandler ["EntityRespawned",
{
	diag_log "Client Respawn";
	diag_log _this;
}];

addMissionEventHandler ["EntityKilled",
{
	diag_log "Client Killed";
	diag_log _this;
}];

addMissionEventHandler ["PlayerConnected",
{
	diag_log "Client Connect";
	diag_log _this;
}];

//ExecVM "survarium_client\fn_preInit.sqf";
//ExecVM "survarium_client\functions\survarium_client_save.sqf";
//ExecVM "survarium_client\functions\survarium_client_load.sqf";
//ExecVM "survarium_client\functions\survarium_client_respawn.sqf";
