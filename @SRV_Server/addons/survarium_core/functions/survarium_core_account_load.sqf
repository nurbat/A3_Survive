_fetchstr = format ["playerInfo:%1", _this];
_fetch = [_fetchstr, 2] call survarium_db_async;
_fetch select 0;