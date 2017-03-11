_insertstr = format["createPlayer:%1:%2", getPlayerUID _this, name _this];
[0, _insertstr] call survarium_db_query;