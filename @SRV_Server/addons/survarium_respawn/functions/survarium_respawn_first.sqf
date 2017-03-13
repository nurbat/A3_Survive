params ["_player"];

_player setDamage 0;
//POSITION
_position = selectRandom spawnPoint;
_player setPos [(_position select 0) + random (_position select 2), (_position select 1) + random (_position select 2), spawnHeight];

removeAllItems _player;
removeAllContainers _player;
removeAllWeapons _player;
removeAllAssignedItems _player;
removeUniform _player;
removeVest _player;
removeBackpack _player;
removeHeadgear _player;

_player setVariable ["loadedIn", true, true];
