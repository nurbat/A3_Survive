/*
 * Arguments:
 * 0: Player <OBJECT>
 * 0: Data <ARRAY>
 *
 * Return Value:
 * None
 *
 */
 params["_player", "_data"];

{ _player linkItem _x; } forEach ((_data select 0) select 0);
_player addHeadgear         ((_data select 0) select 1);//Helm
_player addGoggles          ((_data select 0) select 2);
_player addWeaponGlobal     ((_data select 0) select 3);

if(count (_data select 1) > 0) then 
{
    _dataUniform =              ((_data select 1) select 0);
    _dataUniformItems =         ((_data select 1) select 1);
    _dataUniformMagazines =     ((_data select 1) select 2);
    _dataUniformWeapons =       ((_data select 1) select 3);
    
    
    _player forceAddUniform _dataUniform;//ADD UNIFORM
    { (uniformContainer _player) addItemCargoGlobal _x; } forEach _dataUniformItems;
    { (uniformContainer _player) addMagazineAmmoCargo [(_x select 0), 1, (_x select 1)]; } forEach _dataUniformMagazines;
    { (uniformContainer _player) addWeaponCargoGlobal _x; } forEach _dataUniformWeapons;
};

if(count (_data select 2) > 0) then 
{
    _dataVest =                 ((_data select 2) select 0);
    _dataVestItems =            ((_data select 2) select 1);
    _dataVestMagazines =        ((_data select 2) select 2);
    _dataVestWeapons =          ((_data select 2) select 3);
    _player addVest _dataVest;
    { (vestContainer _player) addItemCargoGlobal _x; } forEach _dataVestItems;
    { (vestContainer _player) addMagazineAmmoCargo [_x select 0, 1, _x select 1]; } forEach _dataVestMagazines;
    { (vestContainer _player) addWeaponCargoGlobal _x; } forEach _dataVestWeapons;
};

if(count (_data select 3) > 0) then 
{
    _dataBackpack =             ((_data select 3) select 0);
    _dataBackpackItems =        ((_data select 3) select 1);
    _dataBackpackMagazines =    ((_data select 3) select 2);
    _dataBackpackWeapons =      ((_data select 3) select 3);
    _player addBackpackGlobal _dataBackpack;
    { (backpackContainer _player) addItemCargoGlobal _x; } forEach _dataBackpackItems;
    { (backpackContainer _player) addMagazineAmmoCargo [_x select 0, 1, _x select 1]; } forEach _dataBackpackMagazines;
    { (backpackContainer _player) addWeaponCargoGlobal _x; } forEach _dataBackpackWeapons;
};