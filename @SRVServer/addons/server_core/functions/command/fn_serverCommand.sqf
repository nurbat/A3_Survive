diag_log _this;
private _ARGS = [_this select 1];
private _CMD = (_this select 0) select 0;
_ARGS append ((_this select 0) select [1, count _this]);

{
    if((_x select 0) == _CMD) then
    {

        _ARGS Call (_x select 1);
    };
} forEach SRVCore_cfg_Commands;