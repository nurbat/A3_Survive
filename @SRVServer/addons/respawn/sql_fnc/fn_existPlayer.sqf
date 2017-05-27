/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * 0: isExist <BOOL>
 *
 */

private _check = (([0, (format["SELECT CASE WHEN EXISTS(SELECT uid FROM player WHERE uid = %1 AND damage < 1) THEN 'true' ELSE 'false' END", getPlayerUID _this])] Call SRVDB_fnc_query select 0) select 0 == "true");
if(SRVRespawn_DebugLevel > 1) then { diag_log format["[SRVS-SPAWN] %1 isExist:%2", name _this, _check]; };
_check