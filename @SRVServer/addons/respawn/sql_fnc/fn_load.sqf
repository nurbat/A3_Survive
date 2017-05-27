/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * 0: Data <ARRAY>
 *
 */
 private["_fetchstr", "_fetch"];

 ["SELECT * FROM player WHERE", 
 [
    ["uid", getPlayerUID _this]
 ], 2, true] call SRVDB_fnc_queryBuild select 0;