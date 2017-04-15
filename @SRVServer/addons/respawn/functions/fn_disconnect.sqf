_unit = _this select 0;
_uid = _this select 2;
_name = _this select 3;
waitUntil { !(isNil { Call SRVDB_fnc_loaded }) }; //SRVS_DB: Check Connection to SQL / Проверяем, установлено соеденение?

if (alive _unit && _uid Call SRVRespawn_fnc_exist) then {
    if(spawnDebug) then { diag_log format["[SRVS-RESPAWN] Disconnect: %1", _name]; };  
    [_unit, _uid] Call SRVRespawn_fnc_update;
    deleteVehicle _unit;
};