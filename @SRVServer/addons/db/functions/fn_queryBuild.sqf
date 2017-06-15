params["_SQL", "_query", "_mode", "_async"];
if(isNil "_mode") then { _mode = 0; };
if(isNil "_async") then { _async = false; };
if !(isNil "_query") then 
{
    {
        _prefix = _x select 2;
        _SQL = ComposeText [_SQL, format[" %1 = '%2'", _x select 0, _x select 1]];
        if (isNil "_prefix" and ((count _query) - 1 > _forEachIndex)) then { _SQL =  ComposeText [_SQL, ","]; }
        else { if !(isNil "_prefix") then { _SQL =  ComposeText [_SQL, _prefix]; }; };
    } forEach _query;
};
if(SRVDb_DebugLevel > 2) then { diag_log format["SRV-SQL: %1", _SQL]; };
if(_async) exitWith { [_SQL, _mode] call SRVDB_fnc_async; };
if !(_async) exitWith { [_mode, _SQL] call SRVDB_fnc_query; };
