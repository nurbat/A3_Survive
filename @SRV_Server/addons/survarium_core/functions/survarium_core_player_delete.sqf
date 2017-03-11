_insertstr = format["deletePlayer:%1", getPlayerUID _this];
[0, _insertstr] call survarium_db_query;