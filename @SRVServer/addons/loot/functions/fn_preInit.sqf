private["_names", "_types", "_options", "_positions", "_groups"];
execVM format["loot\%1.SRVConfig.sqf", worldName];
#include "\loot\Buildings.sqf";
#include "\loot\LootGroup.sqf";
#include "\loot\LootTable.sqf";

//LOOT BUILD LIST
_names       = [];
_types       = [];
_options     = [];
_positions   = [];
{
    _names pushBack (_x select 0);
    _types pushBack (_x select 1);
    _options pushBack (_x select 2);
    _posNew = _x select 3;
    if(isNil "_posNew") then { _positions pushBack []; }
    else { _positions pushBack _posNew; };
} forEach SRVLoot_buildingList;
SRVLoot_buildingList = [_names, _types, _options, _positions];
//[[names, ...], [_types, ...], [_options, ...], [_positions, ...],]
//END BUILD (buildingList)

_names      = [];
_options    = [];
{
    _names pushBack (_x select 0);
    _options pushBack (_x select 1);
} forEach SRVLoot_lootGroup;
SRVLoot_lootGroup = [_names, _options];
//[[names, ...], [[10, _types], ...]]
//END BUILD (lootGroup)

_names      = [];
_options    = [];
{
    _names pushBack (_x select 0);
    _options pushBack (_x select 1);
} forEach SRVLoot_lootTable;
SRVLoot_lootTable = [_names, _options];
//[[names, ...], [[10, _types], ...]]
//END BUILD (SRVLoot_lootTable) //STEP 1 (split Items)
_names = [];
_types = [];
{
    _itemNames = [];
    {
        _itemMult = _x select 0;
        _itemName = _x select 1;
        _groupIndex = (SRVLoot_lootGroup select 0) find _itemName;
        if(_groupIndex == -1) then { _itemNames pushBack [_itemName, _itemMult]; } else 
        {
            _groupItem = ((SRVLoot_lootGroup select 1) select _groupIndex);
            {
                _groupMult = _x select 0;
                _groupName = _x select 1;
                _itemNames pushBack [_groupName, (_itemMult + _groupMult)];
            } forEach _groupItem;
        };
    } forEach _x;

    _types pushBack ((SRVLoot_lootTable select 0) select _forEachIndex);
    _names pushBack _itemNames;
} forEach (SRVLoot_lootTable select 1);
SRVLoot_lootTable = [_types, _names];
//[[type, ...], [items, ...], [multiplie, ...]]
//END BUILD (SRVLoot_lootTable) //STEP 2 (add Items)

["SRVLoot", false] Call SRVCore_fnc_loadModule;

