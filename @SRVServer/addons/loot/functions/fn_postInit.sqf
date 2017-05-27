["PlayerConnected", { (_this select 4) Call SRVLoot_fnc_connected; }] Call SRVCore_fnc_createEvent;
["Respawn", { [player, { (_this select 0) Call SRVLoot_fnc_connected; }] remoteExec ["SRVCore_fnc_execCommand", 2]; }] Call SRVCore_fnc_createEvent;

SRVLoot_PARAM = [SRVLoot_buildingList, SRVLoot_lootTable];
SRVLoot_SERVER = [SRVLoot_cfg_vehicle, SRVLoot_cfg_timeDelay, SRVLoot_cfg_distanceLoad, SRVLoot_cfg_serverLoad];
