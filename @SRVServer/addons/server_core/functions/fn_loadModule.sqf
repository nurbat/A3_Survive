SRVCore_Modules pushBackUnique [_this select 0, _this select 1];
missionNamespace setVariable ["SRVModule", SRVCore_Modules, true];
diag_log format["SRV-Loading: %1", _this select 0];