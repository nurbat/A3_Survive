SRVCall_Modules = missionNamespace getVariable ["SRVModule", []];
SRVCall_Modules pushBackUnique _this;
missionNamespace setVariable ["SRVModule", SRVCall_Modules, true];
if(SRVCall_DebugLevel > 0) then { diag_log format["[SRVS-Callback -> Set => SRVModule] %1", _this]; };