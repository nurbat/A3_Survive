params["_SQL", "_query", "_mode", "_async"];
if(isNil "_mode") then { _mode = 0; };
if(isNil "_async") then { _async = false; };
if !(isNil "_query") then 
{
    {
        if !(_forEachIndex == (count _query) - 1) then { _SQL = ComposeText [_SQL, format[" %1 = '%2',", _x select 0, _x select 1]]; }
        else { _SQL = ComposeText [_SQL, format[" %1 = '%2'", _x select 0, _x select 1]]; };
    } forEach _query;
};
if(_async) exitWith { [_SQL, _mode] call SRVDB_fnc_async; };
if !(_async) exitWith { [_mode, _SQL] call SRVDB_fnc_query; };
