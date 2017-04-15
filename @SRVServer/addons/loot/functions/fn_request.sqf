
_buildingNow = _this select 0;
_buildingPos = _this select 1;
_lootTable = _this select 2;

buildingPosNow = _buildingPos select [0, countPointLoot];
buildingLootSpots = [];
weaponSpotsCount = countWeaponLoot;


_posB = getPosATL _buildingNow;
bX = _posB select 0;
bY = _posB select 1;
bZ = _posB select 2;

{
    deleteVehicle _x;
} forEach (_buildingNow getVariable ["lootSpots", []]);

_chance = floor(random [0,100,50]);
{   
    _posP =  _x;

    pX = _posP select 0;
    pY = _posP select 1;
    pZ = _posP select 2;

    _posNow = [bX - pX, bY - pY, bZ - pZ];

    _lootHolder = createVehicle ["GroundWeaponHolder", _posNow, [], 0, "CAN_COLLIDE"];
    _lootHolder setDir (random 360);
    _lootHolder setPosATL _posNow;

    if !(chanceBuilding) then { _chance = floor(random [0,100,50]); };
    diag_log format["Server:Chance: %1", _chance];
    _itemsNow = [];
    {
        _itemLoad = _x;
        if((_itemLoad select 0) > _chance) then { _itemsNow pushBack (_itemLoad select 1); };
    } forEach _lootTable;

    _spawnedItemClassNames = [];
    while { count _spawnedItemClassNames < countItemLoot && count _itemsNow > 0 } do {
        _itemName = selectRandom _itemsNow;
        _typeItem = _itemName call SRVCore_fnc_itemType;
        switch (_typeItem) do
        {
            case "Weapon":  {
                if (weaponSpotsCount > 0) then {
                    if !(count (weaponCargo _lootHolder) > 0) then {
                        weaponSpotsCount = weaponSpotsCount - 1;
                        _lootHolder addWeaponCargoGlobal [_itemName, 1]; 
                        _magazineClassNames = getArray(configFile >> "CfgWeapons" >> _itemName >> "magazines");
                        if (count(_magazineClassNames) > 0) then {
                            _magazineClassName = selectRandom _magazineClassNames;
                            _numberOfMagazines = (countMagazineLoot select 0) + floor(random (countMagazineLoot select 1)); 
                            _lootHolder addMagazineCargoGlobal [_magazineClassName, _numberOfMagazines];
                            _spawnedItemClassNames pushBack _magazineClassName;
                        };
                    };
                };
            };
            case "Backpack": 	{ _lootHolder addBackpackCargoGlobal [_itemName, 1];  };
            default 			{ _lootHolder addItemCargoGlobal [_itemName, 1];  };
        };
        _spawnedItemClassNames pushBack _itemName;
    };
    buildingLootSpots pushBack _lootHolder;

} forEach buildingPosNow;

_buildingNow setVariable["lootSpots", buildingLootSpots, true];
_buildingNow setVariable["lootTime", time + timeLifeLoot, true];
