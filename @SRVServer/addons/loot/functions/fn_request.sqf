
_buildingNow = _this select 0;
_buildingPos = _this select 1;
_lootTable = _this select 2;
_itemMultiple = _this select 3;

buildingLootSpots = [];
weaponSpotsCount = SRVLoot_countWeaponLoot;

{
    deleteVehicle _x;
} forEach (_buildingNow getVariable ["lootSpots", []]);

_chance = floor(random [0,100,50]);
_chance = _chance - (_chance * _itemMultiple);
_spawnedPoint = [];
_countPointLoot = random SRVLoot_countPointLoot;
while { (count _spawnedPoint < SRVLoot_countPointLoot) and (count _buildingPos) > 0 } do
{
    _posNow = _buildingPos select (floor (random (count _buildingPos)));
    _spawnedPoint pushBack _posNow;
    _buildingPos = _buildingPos - _posNow;

    _lootHolder = createVehicle ["GroundWeaponHolder", _posNow, [], 0, "CAN_COLLIDE"];
    _lootHolder setDir (random 360);
    _lootHolder setVehiclePosition [_posNow, [], 0, "CAN_COLLIDE"];
    if(SRVLoot_DebugLevel > 2) then { diag_log format["[SRV-LOOT-%1] %2", typeOf _buildingNow, _lootHolder]; };	

    if !(chanceBuilding) then { 
        _chance = floor(random [0,100,50]); 
        _chance = _chance - (_chance * _itemMultiple);
    };
    _itemsNow = [];
    {
        _itemLoad = _x;
        if((_itemLoad select 0) > _chance) then { _itemsNow pushBack (_itemLoad select 1); };
    } forEach _lootTable;

    _spawnedItemClassNames = [];
    while { count _spawnedItemClassNames < SRVLoot_countItemLoot && count _itemsNow > 0 } do {
        _itemName = selectRandom _itemsNow;
        _typeItem = _itemName call SRVCore_fnc_itemType;
        switch (_typeItem) do
        {
            case "Weapon":  {
                try {
                if (!(weaponSpotsCount > 0) and (count (weaponCargo _lootHolder) > 0)) throw false;
                weaponSpotsCount = weaponSpotsCount - 1;
                _lootHolder addWeaponCargoGlobal [_itemName, 1]; 
                _magazineClassNames = getArray(configFile >> "CfgWeapons" >> _itemName >> "magazines");
                if (count(_magazineClassNames) > 0) then {
                _magazineClassName = selectRandom _magazineClassNames;
                    _numberOfMagazines = (SRVLoot_countMagazineLoot select 0) + floor(random (SRVLoot_countMagazineLoot select 1)); 
                    _lootHolder addMagazineCargoGlobal [_magazineClassName, _numberOfMagazines];
                    _spawnedItemClassNames pushBack _magazineClassName;
                };
                }catch {};
            };
            case "Backpack": 	{ _lootHolder addBackpackCargoGlobal [_itemName, 1];  };
            default 			{ _lootHolder addItemCargoGlobal [_itemName, 1];  };
        };
        _spawnedItemClassNames pushBack _itemName;
    };
    buildingLootSpots pushBack _lootHolder;
};

_buildingNow setVariable["lootSpots", buildingLootSpots, true];
_buildingNow setVariable["lootTime", time + SRVLoot_timeLifeLoot, true];
