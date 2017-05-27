true Call SRVCore_fnc_serverLock;

addMissionEventHandler ["BuildingChanged",  { [_this, "BuildingChanged"]    Call SRVCore_fnc_runEvent;     }];
addMissionEventHandler ["EntityRespawned",  { [_this, "EntityRespawned"]    Call SRVCore_fnc_runEvent;     }];
addMissionEventHandler ["EntityKilled",     { [_this, "EntityKilled"]       Call SRVCore_fnc_runEvent;     }];
addMissionEventHandler ["HandleDisconnect", { [_this, "HandleDisconnect"]   call SRVCore_fnc_runEvent;     }];
addMissionEventHandler ["PlayerConnected",  { [_this, "PlayerConnected"]    call SRVCore_fnc_runEvent;     }];

SRVCore_Event = [];
//===CRON=====
SRVCore_CronKeys = [];
SRVCore_CronTimes = [];
SRVCore_CronJobs = [];
//-----------------
SRVCore_CronIsKey = "";
SRVCore_CronIsRun = false;
SRVCore_CronRunTime = 0;
//===========
SRVCore_Modules = [["SRVCore", false]];
#include "\server_core\SRVConfig.sqf";
