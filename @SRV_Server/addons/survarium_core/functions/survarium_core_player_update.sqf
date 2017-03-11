params ["_player"];
_playerPos = getPos _player;
_updatestr = format ["updatePlayer:%1:%2:%3:%4:%5:%6", 
damage _player,//damage %1
getDir _player,//DIR %2
_playerPos select 0,//POS_X %3
_playerPos select 1,//POS_Y %4
_playerPos select 2,//POS_Z %5
getPlayerUID _player];//UID
[0, _updatestr] call survarium_db_query;