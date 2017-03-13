params ["_player", "_data"];

_player setDamage (_data select 2);
_player setPos [(_data select 4),(_data select 5),(_data select 6)];

removeAllItems _player;
removeAllContainers _player;
removeAllWeapons _player;
removeAllAssignedItems _player;
removeUniform _player;
removeVest _player;
removeBackpack _player;
removeHeadgear _player;

_player setVariable ["loadedIn", true, true];