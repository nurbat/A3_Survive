SRVCall_DebugLevel = 3;
"SRVCall" Call SRVCall_fnc_setSRVModule;
SRVCall_PlayerConnected     = [];
SRVCall_HandleDisconnect    = [];
SRVCall_EntityKilled        = [];
SRVCall_EntityRespawned     = [];
SRVCall_BuildingChanged     = [];
SRVCall_VehicleKilled     = [];
SRVCall_PlayerKilled     = [];

diag_log format["================="];
diag_log format["CALLBACK LOAD MODULE"];
diag_log format["================="];