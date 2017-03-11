//player
_insertstr = format["insertPlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11", 
getPlayerUID _this, 
name _this, 
[(uniformItems _this), (vestItems _this), (backpackItems _this), (assignedItems _this)], 
[(uniform _this), (vest _this), (backpack _this), (headgear _this)], 
[], 
1, 
2000, 
-1, 
-1, 
position _this, 
0];
[0, _insertstr] call survarium_db_query;