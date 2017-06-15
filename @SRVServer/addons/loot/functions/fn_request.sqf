params ["_serverBuilding", "_tableNowItems"];
private["_buildingNow", "_buildingNowType", "_buildingNowOptions", "_buildingNowPosition", "_tableNowMultiplie", "_buildingNowSpots"];

_buildingNow            = _serverBuilding select 0;
_buildingNowType        = _serverBuilding select 1;
_buildingNowOptions     = _serverBuilding select 2;
_buildingNowPosition    = _serverBuilding select 3;

_optionNowMultiplie     = _buildingNowOptions select 0;
_optionNowCountPoint    = _buildingNowOptions select 1;
_optionNowCountItem     = _buildingNowOptions select 2;
_optionNowCountAmmo     = _buildingNowOptions select 3;
_optionNowCountWeapon   = _buildingNowOptions select 4;

if(_optionNowMultiplie == -1) then { _optionNowMultiplie = SRVLoot_cfg_multipliePoint; };
if(_optionNowCountPoint == -1) then { _optionNowCountPoint = SRVLoot_cfg_countPoint; };
if(_optionNowCountItem == -1) then { _optionNowCountItem = SRVLoot_cfg_countItem; };
if(count _optionNowCountAmmo == 0) then { _optionNowCountAmmo = SRVLoot_cfg_countMagazine; };
if(_optionNowCountWeapon == -1) then { _optionNowCountWeapon = SRVLoot_cfg_countWeapon; };

private["_buildingNowSpots", "_spawnedPoint", "_chance", "_spawnedItemClassNames"];
_buildingNowSpotsObject = [];
_buildingNowSpots = [];
_spawnedPoint = [];
//CLEAR
{ deleteVehicle _x; } forEach (_buildingNow getVariable ["lootSpotsObject", []]);

_chance = floor(random [0,100,50]);
_chance = _chance - (_chance * _optionNowMultiplie);

while { (count _spawnedPoint < _optionNowCountPoint) and (count _buildingNowPosition) > 0 } do
{
    _spawnedItemClassNames = [];

    _posNow = selectRandom _buildingNowPosition;
    _buildingNowPosition = _buildingNowPosition - _posNow;
    _spawnedPoint pushBack _posNow;

    _lootSpoot = [];
    _lootHolder = createVehicle ["GroundWeaponHolder", _posNow, [], 0, "CAN_COLLIDE"];
    _lootHolder setDir (random 360);
    _lootHolder setVehiclePosition [_posNow, [], 0, "CAN_COLLIDE"];
    if(SRVLoot_cfg_DebugLevel > 2) then { diag_log format["[SRV-LOOT-%1] %2", typeOf _buildingNow, _lootHolder]; };	

    if !(SRVLoot_cfg_chance) then { 
        _chance = floor(random [0,100,50]); 
        _chance = _chance - (_chance * _optionNowMultiplie);
    };
    _itemsNow = _tableNowItems select { (_x select 1) >= _chance };
    while { count _spawnedItemClassNames < _optionNowCountItem && count _itemsNow > 0 } do 
    {
        try 
        {
            _itemName = (selectRandom _itemsNow) select 0;
            if(count (_lootSpoot select { _x == _itemName }) > SRVLoot_cfg_countCopyPoint) throw false;
            if(count (_buildingNowSpots select { _x == _itemName }) > SRVLoot_cfg_countCopyOnBuild) throw false;
            _lootSpoot pushBack _itemName;
            _typeItem = _itemName call SRVTools_fnc_itemType;
            switch (_typeItem) do
            {
                case "Weapon":  {
                    if (!(_optionNowCountWeapon > 0) and (count (weaponCargo _lootHolder) > 0)) throw false;
                    _optionNowCountWeapon = _optionNowCountWeapon - 1;
                    _lootHolder addWeaponCargoGlobal [_itemName, 1]; 
                    _magazineClassNames = getArray(configFile >> "CfgWeapons" >> _itemName >> "magazines");
                    if (count(_magazineClassNames) > 0) then {
                    _magazineClassName = selectRandom _magazineClassNames;
                        _numberOfMagazines = (_optionNowCountAmmo select 0) + floor(random (_optionNowCountAmmo select 1)); 
                        _lootHolder addMagazineCargoGlobal [_magazineClassName, _numberOfMagazines];
                        _spawnedItemClassNames pushBack _magazineClassName;
                    };
                };
                case "Backpack": 	{ _lootHolder addBackpackCargoGlobal [_itemName, 1];  };
                default 			{ _lootHolder addItemCargoGlobal [_itemName, 1];  };
            };
            _spawnedItemClassNames pushBack _itemName;
        } catch {};
    };
    _buildingNowSpotsObject pushBack _lootHolder;
    _buildingNowSpots append _lootSpoot;
};

_buildingNow setVariable["lootSpotsObject", _buildingNowSpotsObject, true];
_buildingNow setVariable["lootSpots", _buildingNowSpots, true];
_buildingNow setVariable["lootTime", time + SRVLoot_cfg_timeLifeLoot, true];
